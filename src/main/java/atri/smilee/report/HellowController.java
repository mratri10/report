package atri.smilee.report;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HellowController {

    @GetMapping("/test")
    public String helloWorld(){
        return "Hello World";
    }
}
