package ru.netology.daolayer.repository;

import java.util.List;

public interface IRepository {

    List<String> getProductName(String name);
}
