package deploy.first;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping("/get")
    public String getMessage(){
        return "Hello for GD";
    }
}
