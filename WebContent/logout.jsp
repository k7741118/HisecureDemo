<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%> 
<%

File path;
path = new File("./webapps/HisecureDemo/Pass");// 讀進來的檔案
File[] files = path.listFiles();
for (int i = 0; i < files.length; i++) {
	if (files[i].isFile()) {
		files[i].delete();
	}
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
<link rel="stylesheet" href="../_assets/css/jqm-docs.css" />

<script src="//code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="../../docs/_assets/js/jqm-docs.js"></script>
<script src="//code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>

</head>
<body>

	<div data-role="page" data-theme="e" >
		

		<div data-role="header" data-theme="e">
			<h1>測試公司</h1>
		</div>
		
		<div data-role="content">
			<div class="content-primary">

               
				<div class="ui-body ui-body-b">
					
						<h1 align="center">卡片登出成功!</h1>
					
					
				</div>

			</div>
		

		</div>
		

	</div>



</body>
</html>