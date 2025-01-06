package sn.diamniadio.polytech.gestionfileattente.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import sn.diamniadio.polytech.gestionfileattente.services.VisitorService;

@Controller
public class AdminController {

    @Autowired
    private VisitorService visitorService;

    // Méthode pour afficher les files en cours et les numéros associés
    @GetMapping("/admin/dashboard")
    public String viewDashboard(Model model) {
        // On récupère toutes les queues et leur numéro actuel
        model.addAttribute("queues", visitorService.getAllQueues());
        model.addAttribute("currentNumbers", visitorService.getCurrentNumbers());
        return "admin-dashboard"; // Vue pour l'admin
    }
}
