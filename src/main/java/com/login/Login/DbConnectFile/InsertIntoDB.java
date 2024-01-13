package com.login.Login.DbConnectFile;

import com.login.Login.Entity.User;
import com.opencsv.exceptions.CsvException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Configuration
public class InsertIntoDB {

    @Autowired
    JdbcTemplate jdbcTemplate;

    List<User> userList = new ArrayList<>();

    public void insertingDB() throws IOException, CsvException {

        userList = readCSV.addUser();

    }

    @Bean
    CommandLineRunner loadDatabase(){
        return new CommandLineRunner() {
            @Override
            public void run(String... args) throws Exception {
                insertingDB();

                for (User user:userList){
                    String username=user.getUsername();
                    String password = user.getPassword();
                    jdbcTemplate.execute("insert into userDetails (username,password)"
                    +"values ('"+username+"','"+password+"')");
                }
            }
        };
    }
}
