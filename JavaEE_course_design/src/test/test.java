package test;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.enterprise.inject.New;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sise.dao.NewsDao;
import com.sise.po.News;
import com.sise.po.Type;
import com.sise.po.User;
import com.sise.service.NewsService;
import com.sise.service.TypeService;
import com.sise.service.UserService;

public class test {
	private static ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
	private static NewsService newsService=(NewsService) ctx.getBean("newsService");
	private static TypeService typeService=(TypeService) ctx.getBean("typeService");
	private static UserService userService=(UserService) ctx.getBean("userService");
	public static void main(String[] args) {
//		Type type=new Type();
//		type.setType("科技");
//		typeService.addType(type);
//		
//		News news=new News();
//		news.setTitle("aaasdf");
//		news.setContent("asdfasf");
//		Calendar c = Calendar.getInstance();
//		Date date = c.getTime();
//		news.setPublish_time(date);	
//		news.setType(typeService.findTypeByid(1));
//		news.setSource("fsadfasdf");
//		newsService.addNew(news);
//		newsService.findAllNews();
//		System.out.println(newsService.findNewByid(1));
//		List<News> newsList=newsService.findAllNews();
//		System.out.println(newsList);
//		User user=new User();
//		user.setUsername("hong");
//		user.setPassword("123456");
//		userService.insertUser(user);
		
//		List<User> users=userService.findUser("hong");
//		for (User user : users) {
//			System.out.println(user);
//		}
		

	}

}
