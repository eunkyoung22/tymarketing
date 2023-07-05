<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<script src="/docs/5.3/assets/js/color-modes.js"></script>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	    <meta name="generator" content="Hugo 0.112.5">
	    <title>Dashboard Template · Bootstrap v5.3</title>
	
	    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/dashboard/">
	    
	    <!-- 부트스트랩 -->
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		
		<!-- jQuery UI -->
		<link href="/resources/permeation/js/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
		
		<!-- Inspinia -->
		<link href="/resources/permeation/css/animate.css" rel="stylesheet">
		<link href="/resources/permeation/css/style.css" rel="stylesheet">
	
		<!-- Page styles -->
		<link href="/resources/permeation/css/style_custom.css?ver=20230607224303" rel="stylesheet">
	
		<!-- 부트스트랩 css 사용 -->
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		
		<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

	    <!-- Favicons -->
		<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
		<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
		<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
		<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
		<meta name="theme-color" content="#712cf9">

		<style>
	      .bd-placeholder-img {
	        font-size: 1.125rem;
	        text-anchor: middle;
	        -webkit-user-select: none;
	        -moz-user-select: none;
	        user-select: none;
	      }
	
	      @media (min-width: 768px) {
	        .bd-placeholder-img-lg {
	          font-size: 3.5rem;
	        }
	      }
	
	      .b-example-divider {
	        width: 100%;
	        height: 3rem;
	        background-color: rgba(0, 0, 0, .1);
	        border: solid rgba(0, 0, 0, .15);
	        border-width: 1px 0;
	        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
	      }
	
	      .b-example-vr {
	        flex-shrink: 0;
	        width: 1.5rem;
	        height: 100vh;
	      }
	
	      .bi {
	        vertical-align: -.125em;
	        fill: currentColor;
	      }
	
	      .nav-scroller {
	        position: relative;
	        z-index: 2;
	        height: 2.75rem;
	        overflow-y: hidden;
	      }
	
	      .nav-scroller .nav {
	        display: flex;
	        flex-wrap: nowrap;
	        padding-bottom: 1rem;
	        margin-top: -1px;
	        overflow-x: auto;
	        text-align: center;
	        white-space: nowrap;
	        -webkit-overflow-scrolling: touch;
	      }
	
	      .btn-bd-primary {
	        --bd-violet-bg: #712cf9;
	        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;
	
	        --bs-btn-font-weight: 600;
	        --bs-btn-color: var(--bs-white);
	        --bs-btn-bg: var(--bd-violet-bg);
	        --bs-btn-border-color: var(--bd-violet-bg);
	        --bs-btn-hover-color: var(--bs-white);
	        --bs-btn-hover-bg: #6528e0;
	        --bs-btn-hover-border-color: #6528e0;
	        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
	        --bs-btn-active-color: var(--bs-btn-hover-color);
	        --bs-btn-active-bg: #5a23c8;
	        --bs-btn-active-border-color: #5a23c8;
	      }
	      .bd-mode-toggle {
	        z-index: 1500;
	      }
	    </style>
	    
	    <!-- Custom styles for this template -->
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">
	    <!-- Custom styles for this template -->
	    <link href="dashboard.css" rel="stylesheet">
	</head>
<body>
    <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
      <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
              id="bd-theme"
              type="button"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
      </button>
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

<header class="navbar sticky-top bg-dark flex-md-nowrap p-0 shadow" data-bs-theme="dark">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6 text-white" href="#">TY Marketing</a>

  <ul class="navbar-nav flex-row d-md-none">
    <li class="nav-item text-nowrap">
      <button class="nav-link px-3 text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSearch" aria-controls="navbarSearch" aria-expanded="false" aria-label="Toggle search">
        <svg class="bi"><use xlink:href="#search"/></svg>
      </button>
    </li>
    <li class="nav-item text-nowrap">
      <button class="nav-link px-3 text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <svg class="bi"><use xlink:href="#list"/></svg>
      </button>
    </li>
  </ul>

  <div id="navbarSearch" class="navbar-search w-100 collapse">
    <input class="form-control w-100 rounded-0 border-0" type="text" placeholder="Search" aria-label="Search">
  </div>
</header>


<div class="container-fluid">
<div class="row wrapper border-bottom white-bg page-heading">
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="ibox">
			<div class="ibox-content">
				<div class="table-responsive">
						<table class="table table-sm table-bordered table-striped table-head-align">
							<tr>
								<th>게시글수</th>
								<td colspan="4" style="background-color: #f9f9f9">
									<div>
										<input type="text" id="cafe_post_cnt" name="cafe_post_cnt" value="0" class="form-control" placeholder="예)1000" style="width: 300px">
									</div>
								</td>
							</tr>
							<tr>
								<th>회원수</th>
								<td colspan="4" style="background-color: #f9f9f9">
									<div>
										<input type="text" id="cafe_member_cnt" name="cafe_member_cnt" value="0" class="form-control" placeholder="예)1000" style="width: 300px">
									</div>
								</td>
							</tr>
							<tr>
								<th>지역</th>
								<td colspan="4" style="background-color: #f9f9f9">
									<div class="radio radio-inline">
										<input type="text" id="cafe_area" name="cafe_area" value="" class="form-control" placeholder="예)강남" style="width: 300px">
									</div>
								</td>
							</tr>
						</table>
						<div class="text-center m-b-md">
							<button type="submit" id="searchBtn" class="btn btn-success">검색하기</button>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>

  <div class="row">
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    
      <h1>카페 리스트</h1>
      <div class="table-responsive small">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">NO</th>
              <th scope="col">카페명</th>
              <th scope="col">카페주소</th>
              <th scope="col">회원수</th>
              <th scope="col">주제</th>
              <th scope="col">지역</th>
            </tr>
          </thead>
          <tbody id="listTable">
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>
	<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.2.1/dist/chart.umd.min.js" integrity="sha384-gdQErvCNWvHQZj6XZM0dNsAoY4v+j5P1XDpNkcM3HJG1Yx04ecqIHk7+4VBOCHOG" crossorigin="anonymous"></script><script src="dashboard.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
	<script type="text/javascript">
		
		    $("#searchBtn").on("click", function() {
				var data = {};
				
				//var dataStr = JSON.stringify(data);
				
				$.ajax({
					url : '/api/v1/list',
					type : 'GET',
					contentType : "application/json",
					data : data,
					dataType : "json",
					success : function(data) {
						if(data.status == "OK") {
							var html = "";
							for(i=0; i<data.data.length; i++) {
								html += "<tr>";
								html += "<td>"+Number(i+1)+"</td>";
								html += "<td>"+data.data[i].name+"</td>";
								html += "<td><a href='" + data.data[i].src + "' target='_blank'>" + data.data[i].src + "</a></td>";
								html += "<td>"+addComma(data.data[i].memberNum)+"</td>";
								html += "<td>"+(data.data[i].gubun == "1" ? "맘카페" : "")+"</td>";
								html += "<td>"+(data.data[i].area ? data.data[i].area : "")+"</td>";
								html += "</tr>";
							}
							$("#listTable").empty();
							$("#listTable").append(html);
						}
					},
					error : function(data) {
						console.log("error", data);
					}
				})
			});
		    
		    function addComma(num) {
		        num = String(num);
		        return num.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		    }
		    
		</script>
</body>
</html>