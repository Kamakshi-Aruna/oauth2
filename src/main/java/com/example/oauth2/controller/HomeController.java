package com.example.oauth2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

//    to show the home page
    @GetMapping("/")
    public String home() {
        return "homepage";
    }
}
