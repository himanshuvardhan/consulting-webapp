import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.quickasr.util.Emailer;

/**
 * 
 */

/**
 * @author quickasr
 *
 */
public class EmailTest {

	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext("classpath:config/application-context.xml");

		Emailer mm = (Emailer) context.getBean("emailer");
		try {
			mm.sendMail("quickasr@gmail.com", "quickasr@gmail.com", "quickasr@gmail.com", "Testing Email Functionality", "Testing only \n\n Testing email sent on company creation");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
