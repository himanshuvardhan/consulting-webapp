import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.vardhan.util.Emailer;

/**
 * 
 */

/**
 * @author vardhan
 *
 */
public class EmailTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:config/application-context.xml");

		Emailer mm = (Emailer) context.getBean("emailer");
		try {
			mm.sendMail("consultingwebapp@gmail.com", "saurabhkhannaca7@gmail.com", "himanshuvardhan@gmail.com", "Testing Email Functionality", "Testing only \n\n Testing email sent on company creation");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
