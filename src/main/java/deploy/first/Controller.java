package deploy.first;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping("/")
    public String hello(){
        return "Hello from zahid";
    }
    @GetMapping("/get")
    public String getMessage(){
        return "Hello for GD";
    }
}
//