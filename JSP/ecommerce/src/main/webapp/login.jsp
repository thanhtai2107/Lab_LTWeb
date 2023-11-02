<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/11/2023
  Time: 10:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String error = (String) request.getAttribute("error"); %>
<html>
<head>
    <title>Title</title>
    <head>
        <title>JSP - Hello World</title>
        <style>
            #container {
                background-image: linear-gradient(90deg, rgba(46, 191, 255, 0.5), rgba(173, 26, 191, 0.59)),
                url("https://colorlib.com/etc/lf/Login_v9/images/bg-01.jpg");
                background-size: cover;
                background-position: center;
                width: 100%;
                min-height: 700px;
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
            }

            #container #login {
                background: #f6f6f6;
                height: 500px;
                width: 300px;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 10px;
            }

            #container #login #form-login {
                width: 80%;
                height: 80%;
            }

            #container #login #form-login #login-title {
                font-family: Arial;
                font-weight: bold;
                font-size: 28px;
            }

            #container #login #form-login .login-input {
                margin: 20px 0px;
            }

            #container #login #form-login .login-input input {
                border: none;
                outline: none;
                height: 38px;
                width: 93%;
                background-color: #ffffff;
                border-radius: 10px;
            }

            #container #login #form-login #login-button button {
                background-color: #bd59d7;
                height: 35px;
                width: 135px;
                border: none;
                border-radius: 20px;
                color: white;
                font-family: Arial;
            }

            #container #login #form-login #sign-up {
                margin-top: 90px;
            }

            #container #login #form-login #sign-up a {
                font-family: Arial;
                font-size: 17px;
                text-decoration: none;
            }

        </style>

    </head>
<body>
<div id="container">
    <div id="login">
        <form id="form-login" action="/ecommerce/login" method="post">
            <%
                if (error != null){
            %>
            <div class="alert alert-danger" role="alert">
                <%= error %>
            </div>
            <%
                }
            %>
            <span id="login-title">Sign In</span>
            <div class="login-input">
                <input type="text" name="username" <% if (request.getParameter("username") != null){ %> value="<%=request.getParameter("username") %>" <%} %> placeholder="username or email">
            </div>
            <div class="login-input">
                <input type="password" name="password" placeholder="password">
            </div>
            <div id="login-button">
                <button>SIGN IN</button>
            </div>
            <div id="sign-up">
                <a href="/register.jsp">Sign up</a>
            </div>

        </form>
    </div>
</div>
</body>
</html>
