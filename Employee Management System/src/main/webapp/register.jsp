
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>
<style>
/* Global Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
  background: linear-gradient(135deg, #00bcd4, #2196f3);
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

/* Container */
.container {
  width: 100%;
  max-width: 420px;
  padding: 20px;
}

/* Form Box */
form {
  width: 100%;
  padding: 25px;
  border-radius: 12px;
  background: #fff;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
  animation: fadeIn 0.8s ease-in-out;
}

/* Heading */
h2 {
  color: #00796b;
  margin-bottom: 20px;
  text-align: center;
  font-size: 22px;
  border-bottom: 2px solid #eee;
  padding-bottom: 10px;
}

/* Labels */
label {
  display: block;
  margin-top: 15px;
  font-size: 14px;
  font-weight: bold;
  color: #333;
  text-align: left;
}

/* Inputs & Textarea */
input, textarea {
  width: 100%;
  padding: 10px;
  margin-top: 6px;
  border: 1px solid #bbb;
  border-radius: 6px;
  outline: none;
  transition: 0.3s;
  font-size: 14px;
}

input:focus, textarea:focus {
  border-color: #2196f3;
  box-shadow: 0 0 6px rgba(33, 150, 243, 0.4);
}

textarea {
  resize: none;
}

/* Button Group */
.button-group {
  display: flex;
  justify-content: space-between;
  margin-top: 25px;
}

/* Buttons */
button {
  flex: 1;
  height: 42px;
  margin: 0 6px;
  background: linear-gradient(135deg, #009688, #00796b);
  color: white;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 15px;
  font-weight: bold;
  letter-spacing: 0.5px;
  box-shadow: 2px 4px 8px rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease;
}

button:hover {
  background: linear-gradient(135deg, #ff9800, #f57c00);
  transform: translateY(-2px);
}

/* Error Message */
h3 {
  color: red;
  text-align: center;
  margin-bottom: 15px;
  font-size: 16px;
}

/* Animation */
@keyframes fadeIn {
  from { opacity: 0; transform: scale(0.95); }
  to { opacity: 1; transform: scale(1); }
}
</style>
</head>
<body>
<%
String fail_mesg = (String) request.getAttribute("fail");
if (fail_mesg != null) {
%>
    <h3><%=fail_mesg %></h3>
<%
}
%>

  <div class="container">
    <form action="emp_register" method="post">
      <h2>Employee Registration Form</h2>

      <label for="empId">Employee ID:</label>
      <input type="text" id="empId" name="empId" placeholder="Enter employee ID" required>

      <label for="name">Full Name:</label>
      <input type="text" id="name" name="name" placeholder="Enter full name" required>

      <label for="designation">Designation:</label>
      <input type="text" id="designation" name="designation" placeholder="Enter designation" required>

      <label for="address">Address:</label>
      <textarea id="address" name="address" rows="3" placeholder="Enter address" required></textarea>

      <label for="email">Mail ID:</label>
      <input type="email" id="email" name="email" placeholder="Enter email" required>

      <label for="phone">Phone Number:</label>
      <input type="tel" id="phone" name="phone" placeholder="Enter 10-digit number" pattern="[0-9]{10}" required>

      <div class="button-group">
        <button type="submit">Register</button>
        <button type="reset">Clear</button>
      </div>
    </form>
  </div>
</body>
</html>
