package sn.diamniadio.polytech.gestionfileattente.services;

import sn.diamniadio.polytech.gestionfileattente.models.Queue;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminService {

    private List<Queue> queues;

    public AdminService() {
        queues = new ArrayList<>();
        // Simuler quelques files d'attente
        Queue seneauQueue = new Queue("Seneau", "Dakar");
        queues.add(seneauQueue);

        Queue orangeQueue = new Queue("Orange", "Thiès");
        queues.add(orangeQueue);
    }

    public List<Queue> getAllQueues() {
        return queues;
    }

    public Queue getQueueByServiceAndLocation(String serviceName, String location) {
        for (Queue queue : queues) {
            if (queue.getServiceName().equals(serviceName) && queue.getLocation().equals(location)) {
                return queue;
            }
        }
        return null; // Si la queue n'existe pas
    }
}
