/**
 * 
 */
package com.vardhan.util;

import org.apache.commons.lang3.StringUtils;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

/**
 * @author vardhan
 *
 */
public class Emailer {
	private JavaMailSender mailSender;

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void sendMail(String from, String to, String cc, String subject, String msg){

		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(to);
		if(!StringUtils.isBlank(cc)){
			message.setCc(cc);
		}
		message.setSubject(subject);
		message.setText(msg);
		mailSender.send(message);

	}
}
