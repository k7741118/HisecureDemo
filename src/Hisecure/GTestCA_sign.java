package Hisecure;

import tw.com.chttl.*;
import java.security.cert.*;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public class GTestCA_sign {

	public void Login(Token tok, String pass) throws IOException,
			TokenException {

		tok.login(pass);

	}

	public void Logout(Token tok) {
		tok.logout();

	}

	public String Sign(Token tok, String algorithm, byte[] tbs)
			throws CertificateException, NoSuchAlgorithmException {

		byte[] sig = tok.sign(Token.ID_SIGN, tbs, algorithm);
		if (sig == null) {

			System.out.println("Sign operation fail");
		}
		sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();

		return encoder.encode(sig).trim();
	}

}
