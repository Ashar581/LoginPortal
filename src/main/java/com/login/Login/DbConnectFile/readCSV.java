package com.login.Login.DbConnectFile;

import com.login.Login.Entity.User;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvException;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class readCSV {

    @SuppressWarnings("resource")
    public static List<User> addUser () throws IOException, CsvException {

        List<User> userList = new ArrayList<>();

        CSVReader csvReader = new CSVReader(new FileReader("user.csv"));
        String [] nextRecord;
        int count=0;
        String username="";
        String password="";

        csvReader.readNext();

        while((nextRecord = csvReader.readNext())!=null){

            username=nextRecord[count];
            count++;
            password=nextRecord[count];
            count=0;

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);

            userList.add(user);

        }

        return userList;

    }
}
