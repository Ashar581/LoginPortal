package com.login.Login;

//import com.login.Login.DbConnectFile.readCSV;
import com.login.Login.Entity.User;
import com.opencsv.exceptions.CsvException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {

    List<User> getData = new ArrayList<>();

    @RequestMapping("/")
    public String loginPage() throws IOException, CsvException {

        //readCSV.addUser();
        return "index";
    }

    @RequestMapping("/loginHomePage")
    public String loadPage(@RequestParam("username") String username, @RequestParam("password") String password, Model model){
        if(username.equalsIgnoreCase("ashar581") && password.equals("pwd1")){
            model.addAttribute("username","Ashar Shahab");
            model.addAttribute("name",username);
            model.addAttribute("phone","7278108555");
            model.addAttribute("email","asharshahab@gmail.com");
            model.addAttribute("age","21");
            return "loginHomePage";
        }
        return "index";
    }

    @RequestMapping("/back")
    public String backToHomePage(){
        return "index";
    }

    @RequestMapping("/generate")
    public String createAccount(){
        return "create";
    }
}
