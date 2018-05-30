package com.amitthk.springbtang;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
@EnableConfigurationProperties

public class SpringBootAngularApp extends SpringBootServletInitializer
{
    public static void main( String[] args )
    {
       ConfigurableApplicationContext context = SpringApplication.run(SpringBootAngularApp.class, args);
    }

}
