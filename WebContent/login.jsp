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
    <section class="login">
        <div class="fake"></div>
        <div class="container">
        <form action="index.html" method="post" class="loginForm">
            <h2>Login</h2>
            <div class="idForm">
              <input type="text" class="id" placeholder="ID">
            </div>
            <div class="passForm">
              <input type="password" class="pw" placeholder="PassWord">
            </div>
            <button type="button" class="btn" onclick="button()">LOGIN</button>
            <div class="bottomText">
              Don't you have ID? <a href="#"> sign up</a>
            </div>
        </form>
        </div>  
    </section>
    <footer class="description">
        <div class="des">
            <h1>COMPANY : NOTYOURBUSINES CEO : 김병선</h1>
            <h1>COMPANY_REGNO : [777777777] NETWORK_REGNO 7777-7777-7777 [사업자정보확인]</h1>
            <h1>TEL: 010-6246-2257 ADDRESS : Seoul,Republic of Korea, Earth</h1>
            <h1>NYB_whynot@gmial.com</h1>
            <h1>Bank info : 우리은행 1002048284038 : NYB </h1>
            <h1>CS center : 010-7777-7777AM10:00 ~ PM5:00 (점심시간 PM1:00~2:00) ( WEEKEND/HOLIDAY OFF )</h1>
            <h1>CEO | DESIGN | MACKETING | WEB | ENGINE</h1>
        </div>
    </footer>
</body>
</html>