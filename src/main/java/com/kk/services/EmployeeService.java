package com.kk.services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/employee")
public class EmployeeService {

    @RequestMapping(
        value = "/getEmployeeDetails",
        method = RequestMethod.GET
    )
    @ResponseBody
    public String getEmployeeDetails(
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession httpSession
    ) throws JSONException {

        JSONObject js = new JSONObject();

        js.put("Name", "Tejesh");
        js.put("Calling Name", "Tejesh");
        js.put("Role", "DevOps Engineer");
        js.put("DOB", "01-Jan-2000");
        js.put("Skills", "Docker, Kubernetes, AWS, Terraform, Ansible");
        js.put("Hobbies", "Learning new technologies, Following tech blogs");
        js.put("Location", "India");

        return js.toString();
    }
}
