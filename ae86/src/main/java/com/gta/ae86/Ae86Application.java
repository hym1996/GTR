package com.gta.ae86;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@ComponentScan("com.gta.ae86")
public class Ae86Application {

    public static void main(String[] args) {
        SpringApplication.run(Ae86Application.class, args);
    }

}

