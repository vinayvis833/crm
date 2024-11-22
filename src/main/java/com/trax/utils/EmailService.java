package com.trax.utils;

import javax.mail.internet.MimeMessage;

public interface EmailService {
	 public void sendSimpleMessage(String to, String sub, String body);

	public MimeMessage createMimeMessage();
}
