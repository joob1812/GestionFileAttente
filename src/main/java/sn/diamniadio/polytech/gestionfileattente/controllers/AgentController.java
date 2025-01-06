package sn.diamniadio.polytech.gestionfileattente.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import sn.diamniadio.polytech.gestionfileattente.services.AgentService;
import sn.diamniadio.polytech.gestionfileattente.services.VisitorService;

@Controller
public class AgentController {

    @Autowired
    private AgentService agentService;

    @Autowired
    private VisitorService visitorService;

    // Afficher le numéro en cours et la position actuelle
    @GetMapping("/agent/dashboard")
    public String showDashboard(Model model) {
        // Ici, on récupère toutes les queues pour les afficher dans l'interface
        model.addAttribute("queues", visitorService.getAllQueues());
        return "agent-dashboard"; // Vue pour l'agent
    }

    // Cliquer sur "client suivant"
    @PostMapping("/agent/next")
    public String nextClient(@RequestParam String service, @RequestParam String location, Model model) {
        // Appel du service pour passer au client suivant
        agentService.nextClient(service, location);

        // Récupérer le nouveau numéro en cours et l'afficher
        int currentNumber = visitorService.getCurrentNumber(service + "-" + location);
        model.addAttribute("currentNumber", currentNumber);

        // Rediriger vers la page de l'interface agent
        return "agent-dashboard";
    }

    // Cliquer sur "client précédent"
    @PostMapping("/agent/previous")
    public String previousClient(@RequestParam String service, @RequestParam String location, Model model) {
        // Appel du service pour revenir au client précédent
        agentService.previousClient(service, location);

        // Récupérer le numéro en cours et l'afficher
        int currentNumber = visitorService.getCurrentNumber(service + "-" + location);
        model.addAttribute("currentNumber", currentNumber);

        // Rediriger vers la page de l'interface agent
        return "agent-dashboard";
    }
}
