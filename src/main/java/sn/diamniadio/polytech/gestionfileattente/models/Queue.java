package sn.diamniadio.polytech.gestionfileattente.models;


import java.util.List;

public class Queue {
    private String service;
    private String location;
    private List<Ticket> tickets;

    // Getters et Setters

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public List<Ticket> getTickets() {
        return tickets;
    }

    public void setTickets(List<Ticket> tickets) {
        this.tickets = tickets;
    }
}

