package com.trax.utils;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

		 	@Autowired
		  	private JavaMailSender emailSender;
		 	
		 	@Override
		    public void sendSimpleMessage( String to, String sub, String body) {
		    	
		        SimpleMailMessage message = new SimpleMailMessage(); 
		        message.setTo(to); 
		        message.setSubject(sub); 
		        message.setText(body);
		        emailSender.send(message);
		   }

			@Override
			public MimeMessage createMimeMessage() {
				return null;
			}

}


