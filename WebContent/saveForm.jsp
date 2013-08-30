<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>	
<%@ page import="Hisecure.function_AES" %>
<%

	String password = request.getParameter("password");

    String encrypt=function_AES.encrypt(password);
  	
	FileWriter fos = new FileWriter("./webapps/HisecureDemo/Pass/password.txt", false);
	
	fos.write(encrypt);
	
	fos.close();
	
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

	<div data-role="dialogs" data-theme="e" >
		

		<div data-role="header" data-theme="e">
			<h1>測試公司</h1>
		</div>
		
		<div data-role="content">
			<div class="content-primary">

               
				<div class="ui-body ui-body-b">
				
					<form action="logout.jsp">
						<h1 align="center">卡片初始化成功..</h1>
	 
						<div  data-role="fieldcontain" class="ui-hide-label" data-theme="c" > 
							 <input type="submit" value="卡片登出" onclick="location.href='logout.jsp'location.rel='external'" width="50%" height="50%"/>
						</div>
						
						
					
					</form>
				</div>

			</div>
			
		
			<div class="content-secondary"></div>

		</div>
		

	</div>



</body>
</html>

