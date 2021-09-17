<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>購物車</title>

<link rel="stylesheet" type="text/css" href="cart.css" />
<link
 href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
 rel="stylesheet">
<script type="text/javascript" src="cookie.js"></script>
<head>
 <meta charset="UTF-8">
 <title>購物車</title>

 <link rel="stylesheet" type="text/css" href="cart.css" />
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <script type="text/javascript" src="cookie.js"></script>
 <style>
body {
 font-family: "微軟正黑體";
 background-color: rgb(203, 218, 218);
 align-items: center;
 justify-content: center;
 position: relative;
}
td{
background-color: white;
}
th{
background-color:rgb(126, 199, 199);
}
 .wrap {
            text-align: center;
            margin-top: 50px;
        }

        .submit {
            width: 200px;
            height: 60px;
            font-family: 'Roboto', sans-serif;
            font-size: 20px;
            text-transform: uppercase;
            letter-spacing: 2.5px;
            font-weight: 500;
            color: #000;
            background-color: #fff;
            border: none;
            border-radius: 45px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease 0s;
            cursor: pointer;
            outline: none;
        }

        .submit:hover {
            background-color: #33779e;
            color: #fff;
            transform: translateY(-7px);
        }
</style>
</head>

<body>
<sql:setDataSource var="dataSource" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
     url="jdbc:sqlserver://localhost:1433;databaseName=shopping"
     user="sa"  password="zxcv265358"/>

 <form action="buysuccess.jsp" method="post">
  <div class="container">
   <div id="title" class="title">
    <h1>購物車</h1>
    <div class="search">
     <button class="icon">
      <i class="fa fa-search"></i>
     </button>
     <input type="search" id="search" placeholder="Search..." />
    </div>
   </div>

   <h3>
    <a href="cart.jsp">返回上一頁</a>
   </h3>
   <h3>
    <a href="test.jsp">返回商品頁面</a>
   </h3>

   <table id="table" border="1" cellspacing="0" cellpadding="0"
    class="hide">
    <thead>
     <tr>
      <th>產品編號</th>
      <th>圖片</th>
      <th>商品名稱</th>
      <th>數量</th>
      <th>單價</th>
      <th>合計</th>

     </tr>
    </thead>
    <tbody id="tbody">

    </tbody>
   </table>

   <div class="box" id="box">購物車內暫無商品</div>
   <h2 id="h2" class="">
    總價：$<span id="totalPrice">0</span>
   </h2>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <center>
    <a href="fin.jsp"><input type="submit" name="confirm"
     id="confirm" value="確認送出" class="submit"></a>
   </center>

  </div>
  <script src="server.js" type="text/javascript" charset="utf-8"></script>
  <!--操作购物车页面的cart.js-->
  <script src="check.js"></script>

 </form>

</body>