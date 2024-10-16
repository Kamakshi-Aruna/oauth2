package com.example.oauth2.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/loginSuccess")
    public String loginSuccess(@AuthenticationPrincipal OAuth2User principal, Model model) {
        if (principal == null) {
            return "redirect:/";
        }
        String userEmail = principal.getAttribute("email");
        if (userEmail == null) {
            userEmail = principal.getAttribute("emails") != null ? principal.getAttribute("emails").toString() : "No email found";
        }

        model.addAttribute("userEmail", userEmail);
        return "loginSuccess";
    }

    @GetMapping("/logoutSuccess")
    public String logout() {
        return "logout";
    }
}
