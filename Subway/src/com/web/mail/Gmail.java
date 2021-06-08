package com.web.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("ssangyongsubwayproject@gmail.com","subwayproject@!@!");
	}
}
