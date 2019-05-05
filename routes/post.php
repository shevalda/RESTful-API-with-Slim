<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require_once 'db/config.php';

$app->post('/student/add', function (Request $request, Response $response) {
    $body = $request->getParsedBody();
    $student_name = $body['fullname'];
    $lesson_name = $body['lesson'];
    $grade_mark = (float) $body['mark'];
    
    try {
        $db = new Database();
        $conn = $db->connect();
        
        $result = array();

        $sql = 'SELECT id FROM student WHERE fullname = :name';
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(':name' => $student_name));
        $student_result = $sth->fetchObject();
        $student_id = (int) $student_result->id;
        
        $sql = 'SELECT id FROM lesson WHERE lessonName = :lessonName';
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(':lessonName' => $lesson_name));
        $lesson_result = $sth->fetchObject();
        $lesson_id = (int) $lesson_result->id;
        
        $sql = 'INSERT INTO grade(lessonId, studentId, mark, added) VALUES (:lessonId, :studentId, :mark, NOW())';
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(
            ':lessonId' => $lesson_id,
            ':studentId' => $student_id,
            ':mark' => $grade_mark
        ));

        return $response->withJson(array(
            'message' => 'Data successfully inserted!'
        ));

    } catch (PDOException $err) {
        return $response->withJson(array(
                            'code' => $err->getCode(),
                            'message' => $err->getMessage()
                        ));
    }

    return null;
});