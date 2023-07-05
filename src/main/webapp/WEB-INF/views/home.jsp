<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    
	    <!-- 부트스트랩 -->
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		
		<!-- 부트스트랩 css 사용 -->
		<link rel="stylesheet" href="../resources/css/bootstrap.css">
	</head>
	<body>
		<div class="container">
		<div class="row">
			<!-- 입력폼 그리드 -->
			<div class="col-lg-4">
				<!-- <form action="loginAsk" method="post"> -->
					<!-- ID입력 -->
					<div class="input-group mt-3 mb-1">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">ID</span>
						</div>
						<input type="text" id="loginId" name="userID" class="form-control"
							placeholder="Input ID" aria-label="Input ID"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- PW입력 -->
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">PW</span>
						</div>
						<input type="password" id="loginPw" name="userID" class="form-control"
							placeholder="Input Password" aria-label="Input Password"
							aria-describedby="basic-addon1" required>
					</div>
					<!-- 로그인 버튼 -->
					<button id="loginBtn" type="submit" class="btn btn-dark btn-sm btn-block">Login</button>
			</div>
			<!-- 그림 넣을 그리드 -->
			<div class="col-lg-8"></div>
		</div>
		</div>
		
		
		<!--  부트스트랩 js 사용 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script type="text/javascript" src="../resources/js/bootstrap.js"></script>
		<script type="text/javascript">
		
		    $("#loginBtn").on("click", function() {
				var data = {};
				data.id = $("#loginId").val();
				data.password = $("#loginPw").val();
				
				var dataStr = JSON.stringify(data);
				
				$.ajax({
					url : '/api/v1/login',
					type : 'POST',
					contentType : "application/json",
					data : dataStr,
					dataType : "json",
					success : function(data) {
						if(data.status.code == 200) {
							$(location).attr('href', 'list');	
						}
					},
					error : function(data) {
						console.log("error", data);
						if(data.responseJSON.status.code == 401) {
							alert("아이디 또는 비밀번호를 다시 확인해주세요.");
						} else {
							alert("로그인에 실패했습니다.");
						}
					}
				})
			});
		    
		</script>
	</body>
	
</html>
