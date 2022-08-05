package config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {
	
   @Override
   public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
      configurer.enable();
   }
   @Override
   public void configureViewResolvers(ViewResolverRegistry registry) {
      registry.jsp("/WEB-INF/view/", ".jsp");
   }
   @Override
   public void addResourceHandlers(ResourceHandlerRegistry registry) {
      registry.addResourceHandler("/process/**").addResourceLocations("/process/");
   }
   @Bean
   public MessageSource messageSource() {
	   ResourceBundleMessageSource ms = new ResourceBundleMessageSource();
	   ms.setBasenames("message.lable");
	   ms.setDefaultEncoding("UTF-8");
	   return ms;
   }
   

   @Override
   public void addViewControllers(ViewControllerRegistry registry) {
      /*index*/
      registry.addViewController("/index").setViewName("index");
      
      /*about*/
      registry.addViewController("/about/about-us").setViewName("about/about-us");
      
      /*room*/
      registry.addViewController("/room/rooms").setViewName("room/rooms");
      registry.addViewController("/room/register").setViewName("room/room-register");
      registry.addViewController("/room/room-details").setViewName("room/room-details");
      registry.addViewController("/room/room-details1").setViewName("room/room-details1");
      registry.addViewController("/room/room-details2").setViewName("room/room-details2");
      registry.addViewController("/room/room-details3").setViewName("room/room-details3");
      registry.addViewController("/room/room-details4").setViewName("room/room-details4");
      registry.addViewController("/room/room-details5").setViewName("room/room-details5");
      registry.addViewController("/room/room-details6").setViewName("room/room-details6");
      registry.addViewController("/room/room-reservation1").setViewName("room/room-reservation1");
      registry.addViewController("/room/room-reservation2").setViewName("room/room-reservation2");
      registry.addViewController("/room/room-reservation3").setViewName("room/room-reservation3");
      registry.addViewController("/room/room-reservation4").setViewName("room/room-reservation4");
      registry.addViewController("/room/room-reservation5").setViewName("room/room-reservation5");
      registry.addViewController("/room/room-reservation6").setViewName("room/room-reservation6");
      registry.addViewController("/room/reservation_detail").setViewName("room/reservation_detail");
      
      /*login*/
      registry.addViewController("/login/login").setViewName("login/login");
      registry.addViewController("/login/mypage").setViewName("login/mypage");
      registry.addViewController("/login/signup").setViewName("login/signup");
      registry.addViewController("/login/memberpw").setViewName("login/memberpw");
      
      /*board*/      
      registry.addViewController("/board/notice").setViewName("board/notice");
      registry.addViewController("/board/notice2").setViewName("board/notice2");
      registry.addViewController("/board/notice_add").setViewName("board/notice_add");
      registry.addViewController("/board/notice_update").setViewName("board/notice_update");
      registry.addViewController("/board/notice_admin").setViewName("board/notice_admin");
      registry.addViewController("/board/notice_detail").setViewName("board/notice_detail");
      registry.addViewController("/board/event").setViewName("board/event");
      registry.addViewController("/board/inquiry").setViewName("board/inquiry");
      
   }
   
   
}


