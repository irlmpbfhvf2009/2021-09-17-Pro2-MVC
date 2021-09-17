<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	response.setContentType("text/html;charset=UTF-8");
	response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0
	response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<html>
<head>
<meta charset="UTF-8">
<title>享購</title>

<style>
	  body {
            font-family: "微軟正黑體";
            background-color: rgb(203, 218, 218);
            align-items: center;
            justify-content: center;
            position: relative;
        }

        table {
            border: 1px solid rgba(147, 156, 165, 0.2);
            border-radius: 20px;
            border-collapse: collapse;
            margin: auto;
            width: 600px;
            height: 400px;
            text-align: center;
        }

        header {
            text-align: center;
        }

        input,
        textarea,
        select {
            border: 1px solid rgb(155, 153, 153, 0.4);
            background-color: rgb(203, 218, 218, 0.2);
        }

        form {
            background-color: rgb(255, 255, 255, 0.8);
            margin: 20px auto;
            max-width: 600px;
            padding: 80px;
            /* border-radius: 20px; */
            box-shadow: 0 10px 10px 0 rgba(177, 175, 175, 0.2);
        }

        .form-group__file {
            display: flex;
            flex-direction: column;
            position: relative;
            width: 100%;
            min-width: 130px;
            height: 180px;
        }

        .file-label {
            margin: 10px 0;
        }

        .file-input {
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            width: 130px;
            height: 180px;
            cursor: pointer;
            z-index: 100;
        }

        .file-preview-background {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 130px;
            height: 140px;
            background-color: #f7f7f7;
            border: 2px dashed #dfdfdf;
            border-radius: 10px;
            text-transform: uppercase;
            font-size: 14px;
            letter-spacing: 3px;
            text-align: center;
            color: #bbb;
            display: flex;
            justify-content: center;
            align-items: center;
            /* z-index: 1; */
        }

        .file-preview {
            width: 120px;
            height: 120px;
            position: absolute;
            top: 46px;
            left: 8px;
            border-radius: 65px;
            z-index: 10;
            object-fit: cover;
            opacity: 0;
            transition: opacity 0.4s ease-in;
        }

        h1 {
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

        .wrap {
            text-align: center;
            margin-top: 50px;
        }

        .button {
            width: 140px;
            height: 45px;
            font-family: 'Roboto', sans-serif;
            font-size: 11px;
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

        .button:hover {
            background-color: #33779e;
            color: #fff;
            transform: translateY(-7px);
        }
		.im{
		margin: 0 auto;
		/*border:1px solid lightblue ; */
		/* margin-left: 100px; */
		width:100px;
		height:100px;
		padding-bottom: 50px;
		
	}

    </style>
</head>
<body>
	<h1>新增活動</h1>
    
	<form action=".\RegisterFormServlet" method="post" enctype="multipart/form-data">   
         <table rules="all">
       
		<tbody>
			
			<div class="im">
				<img src="" onerror=""width="100" height="100" alt="封面圖片" >
			</div>
            <tr>
                <td>活動圖片</td>
                <td><input type="file" name="image"></td>
            </tr>
			<tr>
                <td>活動名稱</td>
                <td><input type="text" name="name" size="15" maxlength="15"></td>
            </tr>
            <tr>
                <td>網址</td>
                <td><textarea name="url"  rows="3" cols="40"></textarea></td>
            </tr>
           
            <tr>
                <td>活動描述</td>
                <td><textarea name="description" rows="6" cols="40"></textarea></td>
            </tr>
            <tr>
                <td>備註</td>
                <td><textarea name="note" rows="3" cols="40"></textarea></td>
            </tr>
           
        </tbody>
    </table>
	<div class="wrap" style="display: flex;margin-left: 150px;">
       	 <button type="submit" name="submit" class="button">送出</button>
       	 <button type="submit" name="return" class="button">返回</button>
	</div>
		</form>
	



		<script type="text/javascript">
			var x= new FileReader;
			document.forms[0].elements[0].onchange=function(){
				x.readAsDataURL(this.files[0]);
			}
			x.onloadend=function(){
				document.images[0].src=this.result;
			}
		</script>
	

</body>
</html>