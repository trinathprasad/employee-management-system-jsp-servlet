Employee Management System (JDBC, Servlet, JSP, MySQL)

A web-based Employee Management System built using Java, JDBC, Servlet, JSP, HTML, CSS, and MySQL.
This project enables CRUD (Create, Read, Update, Delete) operations on employee data and follows the MVC architecture for clean and maintainable code.

🚀 Features

Employee Registration

Employee Login

Add Employee

View Employee Details

Update Employee

Delete Employee

Session Handling

MVC Architecture

User-friendly UI using HTML & CSS

🛠️ Tech Stack
Backend

Java (JDK 17 or above)

JDBC

Servlet

JSP

MySQL Database

Frontend

HTML

CSS

Tools

Eclipse IDE

Apache Tomcat

MySQL Workbench

Maven (optional)

📂 Project Structure
EmployeeManagementSystem/
 ├── src/main/java/
 │    ├── com.trinath/
 │    │      ├── RegisterServlet.java
 │    │      ├── LoginServlet.java
 │    │      ├── UpdateServlet.java
 │    │      ├── DeleteServlet.java
 │    │      ├── EmployeeBean.java
 │    │      ├── RegisterDAO.java
 │    │      └── DBConnection.java
 │
 ├── src/main/webapp/
 │    ├── register.jsp
 │    ├── login.jsp
 │    ├── home.jsp
 │    ├── addEmployee.jsp
 │    ├── viewEmployee.jsp
 │    ├── updateEmployee.jsp
 │    ├── deleteEmployee.jsp
 │    └── styles.css
 │
 ├── WEB-INF/
 │    ├── web.xml
 │
 └── README.md
 Database Configuration (MySQL)

Create a database in MySQL:

CREATE DATABASE employee_db;


Create the employee table:

CREATE TABLE employees (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(50),
    address VARCHAR(100),
    email VARCHAR(50),
    phone BIGINT
);


Update your DB credentials in DBConnection.java:

String url = "jdbc:mysql://localhost:3306/employee_db";
String username = "root";
String password = "yourpassword";

▶️ How to Run the Project

Clone the repository

Import project into Eclipse IDE

Configure Apache Tomcat

Add MySQL Connector JAR to project build path

Create database & table in MySQL

Run the project using Tomcat Server

Navigate to:

http://localhost:8080/EmployeeManagementSystem/


🤝 Contributing

Pull requests are welcome.
For major changes, please open an issue first to discuss the change.

📧 Contact

Trinath Prasad Mohanty
📍 Hyderabad, Telangana
📧 trinath.mohanty82@gmail.com

🔗 LinkedIn: https://linkedin.com/in/trinath-mohanty

🔗 GitHub: https://github.com/trinathprasad
