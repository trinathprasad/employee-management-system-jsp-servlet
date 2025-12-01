<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Success</title>
<style>
body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  background: linear-gradient(135deg, #4CAF50, #2E7D32);
  font-family: Arial, sans-serif;
}

.container {
  background: #fff;
  padding: 30px 40px;
  border-radius: 12px;
  box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
  text-align: center;
  animation: fadeIn 0.6s ease-in-out;
}

h2 {
  color: #2E7D32;
  margin-bottom: 20px;
}

button {
  margin-top: 15px;
  padding: 10px 20px;
  border: none;
  border-radius: 6px;
  background: linear-gradient(135deg, #43a047, #2e7d32);
  color: white;
  font-size: 15px;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.3s ease;
}

button:hover {
  background: linear-gradient(135deg, #ff9800, #f57c00);
  transform: translateY(-2px);
}

@keyframes fadeIn {
  from { opacity: 0; transform: scale(0.95); }
  to { opacity: 1; transform: scale(1); }
}
</style>
</head>
<body>
  <div class="container">
    <%
        String suc_message = (String) request.getAttribute("success");
        if (suc_message != null) {
    %>
        <h2><%= suc_message %></h2>
    <%
        }
    %>

    <form action="home.html">
      <button type="submit">Go to Home</button>
    </form>
  </div>
</body>
</html>
