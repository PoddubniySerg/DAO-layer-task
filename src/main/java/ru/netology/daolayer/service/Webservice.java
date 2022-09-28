package ru.netology.daolayer.service;

import org.springframework.stereotype.Service;
import ru.netology.daolayer.repository.IRepository;

import java.util.List;

@Service
public class Webservice {

    private final IRepository repository;

    public Webservice(IRepository repository) {
        this.repository = repository;
    }

    public List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}
