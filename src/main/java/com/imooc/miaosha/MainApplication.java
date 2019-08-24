package com.imooc.miaosha;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//打包用
//import org.springframework.boot.builder.SpringApplicationBuilder;
//importorg.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class MainApplication /*extends SpringBootServletInitializer打包用*/{
    public static void main(String[] args) throws Exception{
        SpringApplication.run(MainApplication.class, args);
    }

    //打包用
    /*@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(MainApplication.class);
    }*/
}
