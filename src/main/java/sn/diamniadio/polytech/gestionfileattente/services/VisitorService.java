package sn.diamniadio.polytech.gestionfileattente.services;

import org.springframework.stereotype.Service;
//import sn.diamniadio.polytech.gestionfileattente.models.Queue;
import sn.diamniadio.polytech.gestionfileattente.models.Ticket;

import java.util.Queue;
import java.util.LinkedList;
import java.util.Map;
import java.util.HashMap;

@Service
public class VisitorService {

    private Map<String, Queue<Integer>> queues = new HashMap<>();
    private Map<String, Integer> currentNumbers = new HashMap<>();

    // Récupérer toutes les files d'attente
    public Map<String, Queue<Integer>> getAllQueues() {
        return queues;
    }

    // Récupérer tous les numéros en cours pour chaque file
    public Map<String, Integer> getCurrentNumbers() {
        return currentNumbers;
    }

    public Ticket generateTicket(String service, String location) {
        String key = service + "-" + location;

        // Vérifie et initialise si nécessaire
        if (!queues.containsKey(key)) {
            queues.put(key, new LinkedList<>());
        }
        if (!currentNumbers.containsKey(key)) {
            currentNumbers.put(key, 0);
        }

        Queue<Integer> queue = queues.get(key);

        // Ajouter un nouveau numéro de ticket dans la file
        int ticketNumber = queue.size() + 1;
        queue.add(ticketNumber);

        // Création du ticket avec ses détails
        Ticket ticket = new Ticket();
        ticket.setService(service);
        ticket.setLocation(location);
        ticket.setTicketNumber(ticketNumber);
        ticket.setQueuePosition(ticketNumber);
        ticket.setPeopleAhead(ticketNumber - 1);
        ticket.setCurrentNumber(currentNumbers.get(key));

        return ticket;
    }

    public int getCurrentNumber(String key) {
        return currentNumbers.getOrDefault(key, 0);
    }

    public void setCurrentNumber(String key, int number) {
        currentNumbers.put(key, number);
    }
}
