package bvrsoftware.com.config;

import org.springframework.context.MessageSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "bvrsoftware.com"})
public class WebMvcConfig implements WebMvcConfigurer {

  /* @Bean
   public InternalResourceViewResolver resolver() {
      InternalResourceViewResolver resolver = new InternalResourceViewResolver();
      resolver.setViewClass(JstlView.class);
      resolver.setPrefix("/WEB-INF/views/");
      resolver.setSuffix(".jsp");
      return resolver;
   }*/

   /**
    * Configure TilesConfigurer.
    */
   @Bean
   public TilesConfigurer tilesConfigurer(){
       TilesConfigurer tilesConfigurer = new TilesConfigurer();
       tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/views/**/tiles.xml"});
       tilesConfigurer.setCheckRefresh(true);
       return tilesConfigurer;
   }

   /**
    * Configure ViewResolvers to deliver preferred views.
    */
   @Override
   public void configureViewResolvers(ViewResolverRegistry registry) {
       TilesViewResolver viewResolver = new TilesViewResolver();
       registry.viewResolver(viewResolver);
   }
    
   /**
    * Configure ResourceHandlers to serve static resources like CSS/ Javascript etc...
    */
    
   @Override
   public void addResourceHandlers(ResourceHandlerRegistry registry) {
       registry.addResourceHandler("/static/**").addResourceLocations("/static/");
   }
   @Bean
   public MessageSource messageSource() {
      ResourceBundleMessageSource source = new ResourceBundleMessageSource();
      source.setBasename("messages");
      return source;
   }

   @Override
   public Validator getValidator() {
      LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
      validator.setValidationMessageSource(messageSource());
      return validator;
   }
   @Bean
   public MultipartResolver multipartResolver() {
      CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
     // multipartResolver.setMaxUploadSize(10485760); // 10MB
     // multipartResolver.setMaxUploadSizePerFile(1048576); // 1MB
      return multipartResolver;
   }
}
