package com.wxp.tools;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.wxp.tools.todolist.dao")
public class TodoListApplication {
  public static void main(String[] args) {
    SpringApplication.run(TodoListApplication.class, args);
  }
}
