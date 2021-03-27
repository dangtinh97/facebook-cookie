<?php if (defined('IZERO') == false) die('Not access'); ?>
<!DOCTYPE html>
	<head>
		<title>Lỗi cấu hình</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<style type="text/css">
			body {
				background-color: #f5f5f5;
				margin: 0;
				padding: 5%;
				padding-top: 10%;
			}

			#box {
				color: #505050;
				background-color: #ffffff;
				border: 1px solid #e0e0e0;
				box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.10), -1px -1px 10px rgba(0, 0, 0, 0.10);
				border-radius: 6px;
				padding: 13px;
				margin: 0 auto;
				max-width: 640px;
			}

			#copyright {
				margin-top: 10px;
				text-align: right;
			}

			#username,
			#password {
				color: #dd0000;
				font-weight: bold;
			}

			#author {
				color: #c0c0c0;
				font-size: small;
				text-shadow: 1px 1px 2px #e0e0e0;
			}
		</style>
	</head>
	<body>
		<div id="box">
			<span>Cấu hình bị lỗi và đã được đưa về mặc định, tài khoản: <span id="username"><?php echo CONFIG_VALUE_USERNAME; ?></span> và mật khẩu: <span id="password"><?php echo CONFIG_VALUE_PASSWORD; ?></span>. Bạn hãy tải lại trang.</span><br/>
			<div id="copyright">
				<span id="author">By Izero</span>
			</span>
		</div>
	</body>
</html>
