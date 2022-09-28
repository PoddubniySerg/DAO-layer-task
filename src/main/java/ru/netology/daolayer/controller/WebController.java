package ru.netology.daolayer.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.daolayer.service.Webservice;

import java.util.List;

@RestController
@RequestMapping("/")
public class WebController {

    private final Webservice service;

    public WebController(Webservice service) {
        this.service = service;
    }

    @GetMapping("/products/fetch-product")
    List<String> getProductName(@RequestParam String name) {
        return service.getProductName(name);
    }
}
