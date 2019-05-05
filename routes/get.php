<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require_once 'db/config.php';

$app = new \Slim\App;
$app->get('/student/summary/{name}', function (Request $request, Response $response, array $args) {
    $name = $args['name'];

    try {
        $db = new Database();
        $conn = $db->connect();

        $result = array();

        $sql = 'SELECT * FROM student WHERE fullname LIKE :name';
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(':name' => '%'.$name.'%'));
        $student_result = $sth->fetchObject();
        $result['fullname'] = $student_result->fullname;
        $result['class'] = (int) $student_result->class;

        $student_id = (int) $student_result->id;
        
        $sql = 'SELECT * 
                FROM grade LEFT JOIN lesson ON grade.lessonId = lesson.id
                WHERE studentId = :studentId
                ORDER BY lessonName, added';
        $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $sth->execute(array(':studentId' => $student_id));
        $grade_lesson_result = $sth->fetchAll();
        
        $result['grades'] = array();

        foreach($grade_lesson_result as $obj) {
            $lesson_name = $obj['lessonName'];
            if (!array_key_exists($lesson_name, $result['grades'])) {
                $result['grades'][$lesson_name] = array((float) $obj['mark']);
            } else {
                array_push($result['grades'][$lesson_name], (float) $obj['mark']);
            }
        }

        return $response->withJson($result);
    } catch (PDOException $err) {
        return $response->withJson(array(
                            'code' => $err->getCode(),
                            'message' => $err->getMessage()
                        ));
    }

    return null;
});