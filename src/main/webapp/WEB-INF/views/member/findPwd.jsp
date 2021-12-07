<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/templatemo.css">
<link rel="stylesheet" href="resources/css/custom.css">
<title>loanplan ��й�ȣ ã��</title>
<style>
#content_box {
	width: 460px;
	margin: 0 auto;
}

#nav_ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	text-align: center;
}

#nav_ul li {
	position: relative;
	display: inline-block;
}

#nav_ul #rcl::after {
	position: absolute;
	content: "";
	top: 53px;
	left: -6px;
	width: 6px;
	height: 3px;
	background: rgb(75, 200, 168);
}

.circle {
	background-color: #4bc8a8;
	width: 106px;
	height: 106px;
	border-radius: 100%;
	position: relative;
	text-align: center;
	line-height: 106px;
	color: #FFFFFF;
	font-weight: bold;
}

.yet {
	background-color: #ffffff;
	border: 1px solid #ccc;
	width: 106px;
	height: 106px;
	border-radius: 100%;
	position: relative;
	text-align: center;
	line-height: 106px;
	color: #c0c4c9;
	font-weight: bold;
}

.checkbox ul {
	list-style-type: none;
	padding: 0;
}

.checkbox ul li {
	margin-bottom: 10px;
}

#content {
	border: 1px solid #dae1e6;
	padding: 20px;
}

button {
	margin: 0 auto;
	height: 50px;
	width: 416px;
	margin-top: 15px;
	margin-bottom: 15px;
	border: none;
	border-radius: 5px;
}

.nextBtn {
	background: #4bc8a8;
	color: #ffffff;
	font-size: 20px;
}

.nextBtn:hover {
	background: #62cfb4;
}

.nextBtn:active {
	background: #88e0ca;
	top: 2px;
}

.phn {
	border: 1px solid #ccc;
	border-radius: 10px;
	height: 250px;
	text-align: center;
	line-height: 45px;
	margin-top: 10px;
	margin-bottom: 10px;
}

.email {
	border: 1px solid #ccc;
	border-radius: 10px;
	height: 250px;
	line-height: 45px;
	text-align: center;
	margin-top: 10px;
	margin-bottom: 10px;
}

#modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
}

#modal.show {
	display: block;
}

.modal_body {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 600px;
	padding: 40px;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}
</style>
</head>
<%@include file="../header.jsp"%>
<body>
	<div id="content_box">
		<div>
			<h1>LOGO</h1>
			<p style="color: #656a6e;">LOGO�� �����ϰ� ��ſ��� ��������!</p>
		</div>
		<ul id="nav_ul">
			<li>
				<div class="circle">01 �������</div>
			</li>
			<li id="rcl">
				<div class="yet circle">02 ��������</div>
			</li>
			<li id="rcl">
				<div class="yet circle">03 �����Է�</div>
			</li>
			<li id="rcl">
				<div class="yet circle">04 ���ԿϷ�</div>
			</li>
		</ul>
		<p>ȸ������ ��� ����</p>
		<div id="content">
			<div class="checkbox">
				<ul>
					<li><a href="#">���̵� ã��</a></li>
					<li><a href="#">��й�ȣ ã��</a></li>
				</ul>
			</div>
			<div>
				<p>����Ȯ�� �� ���̵� ã�Ⱑ �����մϴ�.</p>
			</div>
			<div class="phn">
				<p class="imo">&#128241;</p>
				<p>�ڵ���</p>
				<button class="nextBtn">�����ϱ�</button>
			</div>
			<div class="email">
				<p class="imo">&#128231;</p>
				<p>�̸���</p>
				<button class="nextBtn" id="email-popup">�����ϱ�</button>
			</div>
			<div id="modal">
				<div class="modal_body">
					<h3>LOGO</h3>
					<p>�̸��� ������ �������ּ���</p>
					<form>
						<p>�̸���</p>
						<input type="text">
						<button>������ȣ �ޱ�</button>
						<p>������ȣ �Է�</p>
						<input type="text">
						<button>Ȯ��</button>
					</form>
				</div>
			</div>

			<!-- modal �̺�Ʈ -->
			<script>
            const body = document.querySelector('body');
            const modal = document.querySelector('#modal');
            const btnOpenPopup = document.querySelector('#email-popup');
      
            btnOpenPopup.addEventListener('click', () => {
              modal.classList.toggle('show');
      
              if (modal.classList.contains('show')) {
                body.style.overflow = 'hidden';
              }
            });
      
            modal.addEventListener('click', (event) => {
              if (event.target === modal) {
                modal.classList.toggle('show');
      
                if (!modal.classList.contains('show')) {
                  body.style.overflow = 'auto';
                }
              }
            });
          </script>
		</div>
	</div>
</body>

</html>