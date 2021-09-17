<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新增團購</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
	<div class="divform">
		<h1>新增商品</h1>
		<form action="./ProServlet" method="post">
		
			<!-- 團主名稱 -->
			<strong>團主名稱 </strong>
			<input type="text" class="leader" name="leader" required placeholder="請輸入名字">
			<span class="spleader"></span><br><span class="spanText">(1.不可空白2.至少兩個字3.不能有特殊符號)</span><br>
			
			<!-- 商品名稱 -->
			<strong>商品名稱 </strong><input type="text" name="productName" required class="productname" placeholder="商品名稱">
			<span class="spproductname"></span><br><br>
			
						<!-- 圖片 -->
			<div style="float:right;">
			<label for="file-upload" class="custom-file-upload"><i class="fa fa-cloud-upload"></i> 圖片上傳</label> 
			<input id="file-upload" type="file" name="img" class="upl" />
			    <div>
        			<img class="preview" style="max-width: 150px; max-height: 150px;">
       				<div class="size"></div>
    			</div>
			</div>
			<!-- 原價 -->
			<strong>原價 </strong><input type="text" class="price" required name="price" maxlength="6" size="3">
			
			<!-- 數量 -->
			<strong>數量 </strong><input type="text" name="quantity" required class="quantity" maxlength="3" size="3"><br>
			
			<!-- 折扣 -->
			<strong>折扣 </strong><input type="text" class="discount" required name="discount" maxlength="2" size="3" placeholder="　　折">
			<span class="spdiscount"></span><br> 
			
			<!-- 優惠價 -->
			<strong>優惠價 </strong><input type="text" class="newprice" name="newprice" size="3" readonly><br>
			
			<!-- 日期 -->
			<strong>日期 </strong><input type="date" name="date" size="4" id="dt" readonly><br><br>
			
			<!-- 截止日 -->
			<strong>截止日 </strong><input type="date" required name="deadline" size="4" id="dat" ><br><br>
			
<br><br> 
			
			<!-- 按鈕 -->
			<input type="submit" id="sbtn" name="gSubmit" style="margin-top: 50px;" class="sgbtn">
			<a href="Home.jsp"><input type="button" name="cancel" class="sgbtn" value="取消"></a>
			<input type="button" class="ssgbtn" value="一鍵輸入" style="margin-left:200px">
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
    	document.getElementById("dt").valueAsDate = new Date();

	$(function(){
		// 優惠價計算
		$('.price,.discount').on('change blur focus load',function(){
		if($('.discount').val()<10){
			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/10));
			$('.spdiscount').html('');
		}else if($('.discount').val()>10&&$('.discount').val()<100){
			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/100));
			$('.spdiscount').html('');
		}else{
			$('.spdiscount').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>格式錯誤");
		}
		});
		// 團主姓名驗證
			$('.leader').on('blur',function(){
		let leaderval = $('.leader').val();
		let leaderlen = leaderval.length;
		if(leaderlen==0){
			$('.spleader').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>不可空白")
		}else if(leaderlen<2){
			$('.spleader').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>長度不足")
		}else if(leaderlen>1){
			for(let i=0;i<leaderlen;i++){
				let ch = leaderval.charCodeAt(i);
 				if (ch >= 0x4e00 && ch <= 0x9fff) {flag = true;}
 				else {flag = false; break;}
			}
			if (flag){$('.spleader').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/1828/1828640.png'>")}
			else {$('.spleader').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>格式錯誤")}
		}
	});
		// 產品名稱不能為空
		$('.productname').on('blur',function(){
				let productname = $('.productname').val();
				if(productname.length==0){
			$('.spproductname').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>不可空白")
				}else{
			$('.spproductname').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/1828/1828640.png'>")
				}
	});
		
		
        $('.ssgbtn').on('click',function(){
            let firstname=["李","西門","沈","張","上官","司徒","歐陽","軒轅","趙", "錢", "孫", "周", "吳", "鄭", "王", "馮", "陳","元", "卜", "顧", "孟", "平", "黃", "和", "穆", "蕭", "尹"];
            let name=["彪","巨昆","銳","翠花","小小","撒撒","熊大","寶強","子璇", "淼", "國棟", "夫子", "瑞堂", "甜", "敏", "尚", "國賢", "賀祥", "晨濤","建林", "亦菲", "林", "冰潔", "佳欣", "涵涵", "禹辰", "淳美", "澤惠", "偉洋"];
            let a = firstname[Math.floor(Math.random() * (firstname.length))];
            let b = name[Math.floor(Math.random() * (name.length))];
            $('.leader').val(a+b);
            //商品名
            $('.quantity').val(Math.floor(Math.random()*100)+10);
            $('.price').val(Math.floor(Math.random()*1000)+100);
            $('.discount').val(Math.floor(Math.random()*9)+1);
            if($('.discount').val()<10){
    			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/10));
    			$('.spdiscount').html('');
    		}else if($('.discount').val()>10&&$('.discount').val()<100){
    			$('.newprice').val(parseInt($('.price').val()*$('.discount').val()/100));
    			$('.spdiscount').html('');
    		}else{
    			$('.spdiscount').html("<img style='width:15px' src='https://cdn-icons-png.flaticon.com/128/753/753345.png'>格式錯誤");
    		}
			let productname=["【GROUPON】鐵板燒香魚/碳烤魷魚條 2包/5包",
				"【蛋塔工場】蛋塔12入:頂級用料 冰或熱都好吃",
				"NIKE AF1/1 男休閒鞋 CV1758100/DD2429001 兩色可選",
				"刮鬍刀 德國設計 4D防水三刀頭電刮鬍刀 全機可水洗 4D浮動三刀頭",
				"馬卡龍攪拌杯神奇可可 控卡 婕樂纖 抖音爆紅",
				"N+Y 銀針韓國東大門耳環 垂墜流蘇珠珠款❤️",
				"手作撞色質感帆布托特包",
				"日本天然有機NOCOR產前後明星保養組:前導油+修修身體霜+產後按摩油",
				"《K.T.T.》 HL 類國軍公發MICH盔（低耳）抗彈頭盔 抗彈國際NIJ106.3A認證",]
			$('.productname').val(productname[Math.floor(Math.random() * (productname.length))]);
			var y=["2021","2022"];
			var m=["01","02","03","04","05","06","07","08","09","10","11","12"];
			var d=["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15",
			"16","17","18","19","20","21","22","23","24","25","26","27","28"];
			var yy=y[Math.floor(Math.random() * (y.length))];
			var mm=m[Math.floor(Math.random() * (m.length))];
			var dd=d[Math.floor(Math.random() * (d.length))];
			$('#dat').val(yy+'-'+mm+'-'+dd);
        })
            function format_float(num, pos){
        var size = Math.pow(10, pos);
        return Math.round(num * size) / size;}
    function preview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('.preview').attr('src', e.target.result);
                var KB = format_float(e.total / 1024, 2);
                $('.size').text("檔案大小：" + KB + " KB");}
            reader.readAsDataURL(input.files[0]);}}
    $("body").on("change", ".upl", function (){preview(this);})
	})
	</script>
</body>
</html>