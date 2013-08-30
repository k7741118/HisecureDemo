<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	

		<div data-role="header" data-theme="e">
			<h1>測試公司</h1>
		</div>
		
		<div data-role="content">
			

               
				<div class="ui-body ui-body-b">
					<form action="saveForm.jsp" method="post">

						<h3>請輸入工商憑證卡片PIN碼:</h3>
						
							<input type="password" name="password" id="password" placeholder="PIN碼"><br /> 
						<div  data-role="fieldcontain" class="ui-hide-label" data-theme="c" > 
							 <input type="submit" value="卡片初始化" width="50%" height="50%"/>
						</div>
						
						
					</form>
				</div>

		
			
		
			

		</div>
		





</body>

</html>