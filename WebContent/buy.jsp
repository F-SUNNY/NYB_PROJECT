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
		<form name="newProduct" action="processbuy.jsp?id=<%=request.getParameter("id") %>" class="form-horizontal" method = "post" >
			<div class="form-group row">
				<label class="col-sm-7">성명</label>
				<div class="col-sm-7">
					<input type = "text" name = "name" class=" form-control" id="name" placeholder="홍길동">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">전화번호</label>
				<div class="col-sm-7">
					<input type = "text" name = "phone" class=" form-control" id="phone" placeholder="01012341234">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">주소</label>
				<div class="col-sm-7">
					<input type = "text" name = "address" class=" form-control" id="address" placeholder="서울시 강서구 강서길 72">				
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-7">부재시</label>
				<div class="col-sm-7">
					<input type = "text" name = "how" class=" form-control" id="how" placeholder="경비실에 맡겨주세요.">				
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