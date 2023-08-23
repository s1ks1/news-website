# NEWSTER - NEWS/BLOG WEBSITE

**Note:** 
A project made by a beginner PHP developer trying to learn new technologies.
This project doesn't use any framework, it's all made from scratch. 

>Newster is simple PHP Web Application that uses API for allowing users to log in, register, create, read, update and delete posts.

<img width="100" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-plain.svg" />

## Getting started

1. **Install required tools**
>Before runing the project, make sure you have the following tools installed.
- PHP version 7.0 or higher (8.29.v used)
- MySQL server
- Web server (e.g., Apache or Nginx)
- Postman for API testing

**These are my settings if you have problems starting the project.**
- Laragon is used for Dev Environment version 5.0 (But I used also XAMPP)
    - PHP version 8.2.9
    - MySQL version 8.1.0
    - Apache version 2.4.54
- Postman for API testing
- Beekeeper Studio for SQL Edior and Database Manager
- Visual Code Studio for Code Editor

2. **Set Up the Database**
>I forwarded the database, it is only necessary to perform an import through one of the database managers (PHPMyAdmin, Beekeeper, Tableplus) or run a sql query within a sql editor.
* Information necessary for the database:
    - host: ***localhost***
    - user: <small>***username for your database***</small>
    - password: <small>***password for your database***</small>
    - table: ***newsdb***

3. **Project Configuration**
    - Set your database connection information in the `config/Database.php` file.

4. **Web Server Configuration**
    - Configure your web server to direct requests to the `project` directory.

5. **Running the Project**
   - Open your web browser and access the project via the URL (e.g., http://localhost/).

## Features

- User login and registration.
- Creating, reading, updating, and deleting posts.
- Displaying a list of posts on the main page.
- Displaying a list of posts and user information on the user dashboard.
- Pagination: list of 10 posts per page.
- API endpoint for every class: Posts, Users, Tags, Comments, Categories

## Features that need additional work to make them work

- Comment section should be implemented

## Author
> Created by **Sinisa Zoric**<br>

- **Github:** https://github.com/s1ks1
- **Linkedin** https://www.linkedin.com/in/sinišazorić/


