package Hisecure;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

import tw.com.chttl.Module;
import tw.com.chttl.Token;
import tw.com.chttl.TokenException;

public class Card_initialize {

	Token tok;
	String pass;
	String algorithm;

	public void token_initalize() throws CertificateException,
			NoSuchAlgorithmException, IOException, TokenException {
		
		algorithm = "SHA1withRSA";
		
		Module.initialize();
		
		Module module = Module.getInstance();
		
		tok = module.getToken(module.getTokens()[0]);
		
		Card_initialize card_initialize = new Card_initialize();
		
		card_initialize.setToken(tok);
		
		card_initialize.setAlgorithm(algorithm);
		

	}

	public void setToken(Token tok) {

		this.tok = tok;
	}

	public Token getToken() {

		return tok;

	}

	
	
	public void setPass(String pass) {

		this.pass = pass;
	}

	public String getPass() {

		return pass;

	}

	public void setAlgorithm(String algorithm) {

		this.algorithm = algorithm;

	}

	public String getAlgorithm() {

		return algorithm;
	}

}
