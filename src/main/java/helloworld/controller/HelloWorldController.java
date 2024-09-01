package helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("sayHello")
    public @ResponseBody  String sayHello(){
        return "hello world rajasoft";
    }
}
