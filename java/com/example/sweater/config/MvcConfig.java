package com.example.sweater.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${upload.path}")
    private String uploadPath;

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/img/**")
                .addResourceLocations("file://" + uploadPath + "/");
        registry.addResourceHandler("/static/css/**")
                .addResourceLocations("classpath:/static/css/");
        registry.addResourceHandler("/static/css/less/**")
                .addResourceLocations("classpath:/static/css/less/");
        registry.addResourceHandler("/static/fonts/**")
                .addResourceLocations("classpath:/static/fonts/");
        registry.addResourceHandler("/static/img/**")
                .addResourceLocations("classpath:/static/img/");
        registry.addResourceHandler("/static/img/lidhtbox/**")
                .addResourceLocations("classpath:/static/img/lightbox/");
        registry.addResourceHandler("/static/js/**")
                .addResourceLocations("classpath:/static/js/");
        registry.addResourceHandler("/static/js/bootstrap/**")
                .addResourceLocations("classpath:/static/js/bootstrap/");
    }
}
