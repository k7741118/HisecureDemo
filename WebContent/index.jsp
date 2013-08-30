<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="Hisecure.GTestCA_sign"%>
<%@page import="tw.com.chttl.*"%>
<%@page import="Hisecure.Card_initialize"%>
<%@ page import="Hisecure.function_AES" %>

<%

	BufferedReader reader = new BufferedReader(new FileReader("./jspCode/HisecureDemo/Pass/password.txt"));
    String data="";
    String encrypt="";
    while ((data = reader.readLine()) != null){
    	 encrypt=data;
    }
    reader.close();
    
	Card_initialize card_initialize = new Card_initialize();

	card_initialize.token_initalize();

	Token tok = card_initialize.getToken();
	
	card_initialize.setPass(function_AES.decrypt(encrypt));
	
	String pass = card_initialize.getPass();

	String algorithm = card_initialize.getAlgorithm();

	GTestCA_sign GTestCA = new GTestCA_sign();

	GTestCA.Login(tok, pass);

	String in_hash = request.getParameter("hashvalue");
	
	try {

		byte[] tbs = in_hash.getBytes();

		String sig_value = GTestCA.Sign(tok, algorithm, tbs);

		out.print(sig_value.trim());

		GTestCA.Logout(tok);

	} catch (Exception e) {

		e.printStackTrace();

	}
%>




