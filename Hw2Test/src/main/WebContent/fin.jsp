<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
.h1 {
 background-color: #f7f7f7;
 /* 告訴電腦背景顏色 */
 padding: 18px 0 16px 22px;
 /* 告訴電腦內距要多大 */
 border-left: 8px solid #33779e;
 /* 告訴電腦左邊框要多寬、跟顏色 */
 color: #333 !important;
 /* 告訴電腦文字顏色 */
 width: 300px;
}
.leftSide {
 float: left;
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
  
  <div id="title" style="background-color:rgb(126, 199, 199);" class="title container">
   <h1 >購買成功</h1>
   <div class="search">
    <button class="icon"><i class="fa fa-search"></i></button>
    <input type="search" id="search" placeholder="Search..." />
   </div>
  </div>
  
 <div class="leftSide">
  <h1 class="h1">您的購買紀錄&nbsp;:</h1>
 </div>
 <div class="container">
  <table id="table" border="1" cellspacing="0" cellpadding="0" class="hide">
   <thead>
    <tr>

     <th>
      圖片
     </th>
     <th>
      商品名稱
     </th>
     <th>
      數量
     </th>
     <th>
      單價
     </th>
     <th>
      合計
     </th>

    </tr>
   </thead>
   <tbody id="tbody">

   </tbody>
  </table>
  <div class="box" id="box">購物車內暫無商品</div>
  <h2 id="h2" class="">總價：$<span id="totalPrice">0</span></h2>
  <br><br><br><br><br><br>
  <center>
   
   <a href="TotalHome.jsp"><input type="submit" name="confirm" value="返回商品頁面" class="submit"></a>
           
  </center>
 </div>
 <script src="server.js" type="text/javascript" charset="utf-8"></script>
 <!--操作购物车页面的cart.js-->
 <script src="fin.js"></script>
 
 
 </body>