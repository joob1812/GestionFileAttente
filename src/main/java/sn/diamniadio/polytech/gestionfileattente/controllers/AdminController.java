package sn.diamniadio.polytech.gestionfileattente.controllers;

import org.springframework.stereotype.Controller;
import sn.diamniadio.polytech.gestionfileattente.models.Queue;
import sn.diamniadio.polytech.gestionfileattente.services.AdminService;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class AdminController {
    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    @GetMapping("/admin/queues")
    public List<Queue> getAllQueues() {
        return adminService.getAllQueues();
    }
}
