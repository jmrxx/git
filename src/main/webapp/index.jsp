<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M8 cards</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>


 <form action="login" class="box"  method="POST">
            <h1 class="titulo">Login Cartas</h1>
            <input type="text" name="user" placeholder="Usuario" autofocus>
            <div class="item"><input type="checkbox" name="checkbox"  value="huma">
            <p>Soy Humano</p>
            </div>
           <div class="item"> <input type="checkbox" name="checkbox" value="robot">
            	<p>Soy un robot</p>
            </div>
            <input type="password" name="password" placeholder="Password">
            <button type="submit">
                Login
            </button>
        </form>

</body>
</html>