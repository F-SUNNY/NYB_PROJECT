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
	function checkForm() {
		if (!document.newmember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newmember.pw.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newmember.pw.value != document.newmember.pwconfirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}      
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
    <section class="join">
        <div class="fake"></div>
        <form name="newmember" method="POST" class="joinForm" action="processaddmember.jsp" onsubmit="return checkForm()">
        <h2>회원가입</h2>
        <div class="textForm">
          <input name="id" type="text" class="id_" placeholder="아이디">
        </div>
        <div class="textForm">
          <input name="pw" type="password" class="pw_" placeholder="비밀번호">
        </div>
         <div class="textForm">
          <input name="pwconfirm" type="password" class="pw_" placeholder="비밀번호 확인">
        </div>
        <div class="textForm">
          <input name="name" type="text" class="name" placeholder="이름">
        </div>
         <div class="textForm">
          <input name="email" type="text" class="email" placeholder="이메일">
        </div>
        <div class="textForm">
          <input name="nickname" type="text" class="nickname" placeholder="닉네임">
        </div>
        <div class="textForm">
          <input name="phone" type="number" class="cellphoneNo" placeholder="전화번호 01012341234">
        </div>
        <input type="submit" class="btn" value="J O I N"/>
      </form>
    </section>
    
</body>
</html>