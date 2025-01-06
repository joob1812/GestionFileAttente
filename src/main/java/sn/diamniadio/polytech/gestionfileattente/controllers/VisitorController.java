package sn.diamniadio.polytech.gestionfileattente.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import sn.diamniadio.polytech.gestionfileattente.models.Ticket;
import sn.diamniadio.polytech.gestionfileattente.services.VisitorService;

@Controller
public class VisitorController {
    @Autowired
    private VisitorService visitorService;

    @PostMapping("/generate-ticket")
    public String generateTicket(@RequestParam String service, @RequestParam String location, Model model) {
        // Génération du ticket
        Ticket ticket = visitorService.generateTicket(service, location);

        // Récupération de la position actuelle du ticket dans la file
        int currentNumber = visitorService.getCurrentNumber(service + "-" + location);

        // Calcul de la position dans la file et du nombre de personnes devant
        int queuePosition = ticket.getQueuePosition();
        int peopleAhead = queuePosition - 1;

        // Numéro actuellement en cours de traitement
        int currentProcessingNumber = currentNumber;

        // Ajout des informations nécessaires au modèle pour l'affichage
        model.addAttribute("ticket", ticket);
        model.addAttribute("queuePosition", queuePosition);
        model.addAttribute("peopleAhead", peopleAhead);
        model.addAttribute("currentProcessingNumber", currentProcessingNumber);

        // Redirection vers la page de ticket avec les informations mises à jour
        return "ticket-details"; // Nouvelle vue pour afficher les détails du ticket
    }
}
