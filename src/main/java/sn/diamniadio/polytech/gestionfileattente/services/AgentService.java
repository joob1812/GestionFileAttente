package sn.diamniadio.polytech.gestionfileattente.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgentService {

    @Autowired
    private VisitorService visitorService;

    // Passer au client suivant (incrémenter le numéro en cours)
    public void nextClient(String service, String location) {
        String key = service + "-" + location;
        int current = visitorService.getCurrentNumber(key);
        visitorService.setCurrentNumber(key, current + 1); // Incrémenter le numéro en cours
    }

    // Revenir au client précédent (décrémenter le numéro en cours, ne pas descendre en dessous de 0)
    public void previousClient(String service, String location) {
        String key = service + "-" + location;
        int current = visitorService.getCurrentNumber(key);
        visitorService.setCurrentNumber(key, Math.max(0, current - 1)); // Décrémenter sans descendre en dessous de 0
    }
}
