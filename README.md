This repository contains a Golang application that uses the Gin framework and connects to a PostgreSQL database. The application is containerized using Docker and Docker Compose.
my-golang-app
├── cmd
│   └── web
│       └── main.go
├── document_platform_db.sql
├── go.mod
├── go.sum
├── internal
│   ├── controllers
│   │   ├── index_controller.go
│   │   ├── login_controller.go
│   │   ├── register_controller.go
│   │   └── user_controller.go
│   ├── middleware
│   │   └── middleware.go
│   ├── models
│   │   └── user.go
│   ├── routes
│   │   └── routes.go
│   └── views
│       └── login.html
├── migrations
├── static
└── templates

 
