# RESTful API with Slim

This is an example for School API consisting of `student`, `grade`, and `lesson` table. It is built on PHP 7.1.16 with Slim V3 Framework.

## Dependecies

1. Composer
2. MySQL
3. Slim V3

## How to Run API Server

1. Start MySQL server
2. Create database named `schooldb` in MySQL
3. Open terminal in project directory
4. Run `mysql -u root schooldb < db/schooldb.sql` to import database
5. Run `composer install` to install Slim
6. Run `php -S localhost:8000` to start the server

## Documentation

* GET `/student/summary/{name}`

to get information summary of a student

**Example**

GET `localhost:8000/student/summary/aspen`

*Result*
```
{
    "fullname": "Aspen Lydia",
    "class": 2,
    "grades": {
        "Biology": [
            45.25
        ],
        "Chemistry": [
            55.61
        ],
        "History": [
            52.76
        ],
        "Languages": [
            62.58,
            68.53,
            49.13,
            64.57,
            37.58
        ],
        "Mathematics": [
            82.37,
            93.29,
            83.29
        ],
        "Religion": [
            70.35,
            37.84
        ]
    }
}
```


* POST `/student/add`

to add a grade on a lesson of a student

**Header**

| Key          | Value            |
| ------------ | ---------------- |
| Content-Type | application/json |

**Request Body**

```
{
	"fullname" : "Aspen Lydia",
	"lesson" : "Computers",
	"mark" : 95.9
}
```

**Example**

GET `localhost:8000/student/summary/aspen`

*Result*

```
{
    "message": "Data successfully inserted!"
}
```