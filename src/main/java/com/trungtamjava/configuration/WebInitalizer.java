package com.trungtamjava.configuration;




import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitalizer implements WebApplicationInitializer {

    public void onStartup(ServletContext container) throws ServletException {

	AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
	ctx.register(HelloWorldConfiguration.class);
	ctx.setServletContext(container);

	DispatcherServlet dispatcherServlet = new DispatcherServlet(ctx);
	dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);

	ServletRegistration.Dynamic servlet = container.addServlet("dispatcher", dispatcherServlet);
	servlet.setLoadOnStartup(1);
	servlet.addMapping("/");

	CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter("UTF-8", true);
	container.addFilter("encodingFilter", characterEncodingFilter).addMappingForUrlPatterns(null, false, "/*");

    }

}