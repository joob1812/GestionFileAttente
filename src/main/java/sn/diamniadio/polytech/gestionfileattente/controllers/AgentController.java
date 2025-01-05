package sn.diamniadio.polytech.gestionfileattente.controllers;

import org.springframework.stereotype.Controller;
import sn.diamniadio.polytech.gestionfileattente.services.AgentService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;

@Controller
public class AgentController {
    private final AgentService agentService;

    public AgentController(AgentService agentService) {
        this.agentService = agentService;
    }

    //Méthode pour passer au client suivant avec les paramètres serviceName et location
    @PostMapping("/agent/next")
    public String nextClient(@RequestParam String serviceName, @RequestParam String location) {
        return agentService.nextClient(serviceName, location);
    }

    // Méthode pour revenir au client précédent avec les mêmes paramètres
    @PostMapping("/agent/previous")
    public String previousClient(@RequestParam String serviceName, @RequestParam String location) {
        return agentService.previousClient(serviceName, location);
    }
}