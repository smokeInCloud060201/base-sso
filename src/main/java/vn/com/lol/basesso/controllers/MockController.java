package vn.com.lol.basesso.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MockController {

    @GetMapping("/hello")
    public String hello() {
        return "Hello from Mock Controller!";
    }
}
