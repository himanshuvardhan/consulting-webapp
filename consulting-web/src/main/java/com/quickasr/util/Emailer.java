package com.quickasr.util;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.StringUtils;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class Emailer {
	private JavaMailSender mailSender;

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void sendMail(String from, String to, String cc, String subject, String msg) throws MessagingException {

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);
			helper.setFrom(from);
			helper.setTo(to);
			if (!StringUtils.isBlank(cc)) {
				helper.setBcc(cc);
			}
			helper.setSubject(subject);
			helper.setText("<html> <body>" + msg + " </body></html>", true);
			mailSender.send(message);
		} catch (MessagingException e) {
			throw e;
		}

	}
}
