<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <title>NOTYOURBUSINESS</title>
    <script type="text/javascript">
        
        
        function proc()
        {
            var menu = document.getElementById("menupage");
            if(menu.style.display=='none'){
                menu.style.display='block';
            }
            else{
                menu.style.display='none';
            }
            
        }
    
    </script>
</head>
<body>
	<header class="head">
		<div class="container">
			<div class="logo">
				<a href="main.jsp" class="nyb">NOTYOURBUSINESS</a>
			</div>
			<div class="menu">
                <a href="login.jsp" class="logoname">LOGIN</a>
                <a href="join.jsp" class="logoname">JOIN</a>
                <a href="shop.jsp" class="logoname">SHOP</a>
                <a href="javascript:proc();"  class="logoname menucon"><i class="fas fa-bars"></i></a>
            </div>    
		    </div>
	</header>
	<section id="menupage">     
		<div class="menubg"></div>      
		<ul>
			<li><a href="about.jsp" class="me">ABOUT</a></li>
            <li><a href="shop.jsp" class="me">SHOP</a></li>
            <li><a href="photo.jsp" class="me">PHOTO</a></li>
            <li><a href="#" class="me">BOARD</a></li>
			<li><a href="#" class="me">SNS</a></li>
			<li><a href="javascript:proc();" class="me">CLOSE</a></li>
		</ul>
	</section>
	<div class="fake"></div>	
	<div class = "container">
		<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method = "post" enctype ="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-7">제품번호</label>
				<div class="col-sm-7">
					<input type = "text" name = "productid" class=" form-control" id="productid">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">제품이름</label>
				<div class="col-sm-7">
					<input type = "text" name = "pname" class=" form-control" id="pname">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">가격</label>
				<div class="col-sm-7">
					<input type = "text" name = "unitPrice" class=" form-control" id="unitPrice">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">상세설명</label>
				<div class="col-sm-7">
					<textarea  name = "description" cols="50" rows="2" class=" form-control"></textarea>				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">제조사</label>
				<div class="col-sm-7">
					<input type = "text" name = "manufacturer" class=" form-control">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">카테고리</label>
				<div class="col-sm-10">
					<input type = "radio" name = "category" value="outer">OUTER
					<input type = "radio" name = "category" value="top">TOP				
					<input type = "radio" name = "category" value="bottom">BOTTOM
					<input type = "radio" name = "category" value="accesory">ACCESORY
					<input type = "radio" name = "category" value="etc">ETC
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">제품상태</label>
				<div class="col-sm-7">
					<input type = "radio" name = "p_condition" value="new">NEW				
					<input type = "radio" name = "p_condition" value="S">S급
					<input type = "radio" name = "p_condition" value="A">A급
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">분위기</label>
				<div class="col-sm-7">
					<input type = "radio" name = "p_condition_2" value="rank">RANK				
					<input type = "radio" name = "p_condition_2" value="hot">HOT
					<input type = "radio" name = "p_condition_2" value="NONE">NONE
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">이미지</label>
					<div class="col-sm-7">
						<input type="file" name="productimage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type = "submit" class = "btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>	
</body>
</html>