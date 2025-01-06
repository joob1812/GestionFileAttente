<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%--<!DOCTYPE html>--%>
<%--<html lang="fr">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Queue Management</title>--%>
<%--    <!-- Lien vers le fichier CSS externe -->--%>
<%--    <link rel="stylesheet" href="css/style.css">--%>
<%--</head>--%>
<%--<body>--%>

<%--<header>--%>
<%--    <h1>Queue Management System</h1>--%>
<%--</header>--%>

<%--<div class="container">--%>
<%--    <h2>Choisissez votre rôle :</h2>--%>
<%--    <button onclick="showRole('visitor')">Visiteur</button>--%>
<%--    <button onclick="showRole('agent')">Agent</button>--%>
<%--    <button onclick="showRole('admin')">Administrateur</button>--%>

<%--    <!-- Section Visiteur -->--%>
<%--    <div id="visitor" class="role-section">--%>
<%--        <h3>Bienvenue, Visiteur !</h3>--%>
<%--        <form id="visitor-form">--%>
<%--            <label for="service">Choisissez un service :</label>--%>
<%--            <select id="service" name="service">--%>
<%--                <option value="Seneau">Seneau</option>--%>
<%--                <option value="Orange">Orange</option>--%>
<%--                <option value="Senelec">Senelec</option>--%>
<%--                <option value="Bank">Bank</option>--%>
<%--            </select>--%>

<%--            <label for="location">Choisissez une localisation :</label>--%>
<%--            <select id="location" name="location">--%>
<%--                <option value="Dakar">Dakar</option>--%>
<%--                <option value="Thiès">Thiès</option>--%>
<%--                <option value="Saint-Louis">Saint-Louis</option>--%>
<%--            </select>--%>

<%--            <button type="submit">Obtenir un ticket</button>--%>
<%--        </form>--%>

<%--        <!-- Affichage des détails du ticket -->--%>
<%--        <div id="ticket-details" class="ticket-details" style="display:none;">--%>
<%--            <h4>Votre Ticket :</h4>--%>
<%--            <p><strong>Numéro d'e-ticket :</strong> <span id="ticket-number"></span></p>--%>
<%--            <p><strong>Votre position dans la file :</strong> <span id="position"></span></p>--%>
<%--            <p><strong>Nombre de personnes devant vous :</strong> <span id="people-ahead"></span></p>--%>
<%--            <p><strong>Numéro actuellement en traitement :</strong> <span id="current-ticket"></span></p>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <!-- Section Agent -->--%>
<%--    <!-- Section Agent -->--%>
<%--    <div id="agent" class="role-section">--%>
<%--        <h3>Bienvenue, Agent !</h3>--%>
<%--        <p>Choisissez un service et une localisation pour gérer la file d'attente :</p>--%>
<%--        <form id="agent-form">--%>
<%--            <label for="agent-service">Choisissez un service :</label>--%>
<%--            <select id="agent-service" name="service">--%>
<%--                <option value="Seneau">Seneau</option>--%>
<%--                <option value="Orange">Orange</option>--%>
<%--                <option value="Senelec">Senelec</option>--%>
<%--                <option value="Bank">Bank</option>--%>
<%--            </select>--%>

<%--            <label for="agent-location">Choisissez une localisation :</label>--%>
<%--            <select id="agent-location" name="location">--%>
<%--                <option value="Dakar">Dakar</option>--%>
<%--                <option value="Thiès">Thiès</option>--%>
<%--                <option value="Saint-Louis">Saint-Louis</option>--%>
<%--            </select>--%>

<%--            <button type="button" onclick="getQueueInfo()">Obtenir le numéro en cours</button>--%>
<%--        </form>--%>

<%--        <h4>Numéro en cours de traitement :</h4>--%>
<%--        <p><strong>Numéro actuel :</strong> <span id="current-ticket-number">--</span></p>--%>

<%--        <button type="button" onclick="manageQueue('next')">Suivant</button>--%>
<%--        <button type="button" onclick="manageQueue('previous')">Précédent</button>--%>
<%--    </div>--%>




<%--    <!-- Section Admin -->--%>
<%--    <div id="admin" class="role-section">--%>
<%--        <h3>Bienvenue, Administrateur !</h3>--%>
<%--        <p>Vue d'ensemble des files en cours :</p>--%>

<%--        <!-- Liste des files avec informations dynamiques -->--%>
<%--        <div id="queue-list">--%>
<%--            <ul>--%>
<%--                <li>File d'attente Seneau - Dakar--%>
<%--                    <p><strong>Numéro en cours :</strong> <span id="current-ticket-seneau-dakar">--</span></p>--%>
<%--                    <!--                    <p><strong>Position actuelle :</strong> <span id="current-position-seneau-dakar">&#45;&#45;</span></p>-->--%>
<%--                </li>--%>
<%--                <li>File d'attente Orange - Thiès--%>
<%--                    <p><strong>Numéro en cours :</strong> <span id="current-ticket-orange-thies">--</span></p>--%>
<%--                    <!--                    <p><strong>Position actuelle :</strong> <span id="current-position-orange-thies">&#45;&#45;</span></p>-->--%>
<%--                </li>--%>
<%--                <li>File d'attente Senelec - Saint-Louis--%>
<%--                    <p><strong>Numéro en cours :</strong> <span id="current-ticket-senelec-saintlouis">--</span></p>--%>
<%--                    <!--                    <p><strong>Position actuelle :</strong> <span id="current-position-senelec-saintlouis">&#45;&#45;</span></p>-->--%>
<%--                </li>--%>
<%--                <li>File d'attente Bank - Dakar--%>
<%--                    <p><strong>Numéro en cours :</strong> <span id="current-ticket-bank-dakar">--</span></p>--%>
<%--                    <!--                    <p><strong>Position actuelle :</strong> <span id="current-position-bank-dakar">&#45;&#45;</span></p>-->--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>

<%--        <button type="button" onclick="viewAllTickets()">Voir tous les tickets</button>--%>
<%--    </div>--%>

<%--</div>--%>

<%--<script>--%>
<%--    // Variable globale pour stocker le currentTicket--%>
<%--    let currentTicket = null;--%>

<%--    // Fonction pour afficher la section correspondant au rôle--%>
<%--    function showRole(role) {--%>
<%--        // Cacher toutes les sections--%>
<%--        const sections = document.querySelectorAll('.role-section');--%>
<%--        sections.forEach(section => section.classList.remove('active'));--%>

<%--        // Afficher la section correspondant au rôle sélectionné--%>
<%--        const roleSection = document.getElementById(role);--%>
<%--        roleSection.classList.add('active');--%>
<%--    }--%>

<%--    // Fonction pour obtenir le numéro du ticket en cours dans la file sélectionnée (Agent)--%>
<%--    function getQueueInfo() {--%>
<%--        const service = document.getElementById('agent-service').value;--%>
<%--        const location = document.getElementById('agent-location').value;--%>

<%--        // Si currentTicket existe, l'afficher. Sinon, générer un nouveau ticket--%>
<%--        const ticketToDisplay = currentTicket || Math.floor(Math.random() * 1000); // Si currentTicket est null, générer un numéro de ticket aléatoire--%>

<%--        // Mise à jour du numéro de ticket en cours de traitement dans l'interface--%>
<%--        document.getElementById('current-ticket-number').innerText = ticketToDisplay;--%>
<%--    }--%>

<%--    // Fonction pour gérer la file d'attente (Agent)--%>
<%--    function manageQueue(action) {--%>
<%--        const service = document.getElementById('agent-service').value;--%>
<%--        const location = document.getElementById('agent-location').value;--%>

<%--        if (action === 'next') {--%>
<%--            alert("Vous avez sélectionné le prochain client.");--%>
<%--            // Ici, on enverrait une requête POST au backend pour passer au client suivant--%>
<%--            // Exemple : fetch(`/agent/next/${service}/${location}`, { method: 'POST' });--%>
<%--        } else if (action === 'previous') {--%>
<%--            alert("Vous avez sélectionné le client précédent.");--%>
<%--            // Ici, on enverrait une requête POST au backend pour revenir au client précédent--%>
<%--            // Exemple : fetch(`/agent/previous/${service}/${location}`, { method: 'POST' });--%>
<%--        }--%>
<%--    }--%>

<%--    // Fonction pour afficher tous les tickets (Admin)--%>
<%--    function viewAllTickets() {--%>
<%--        // alert("Affichage de tous les tickets.");--%>

<%--        // Utilisation de currentTicket pour afficher les informations des tickets en cours dans la section Admin--%>
<%--        const ticketToDisplay = currentTicket || Math.floor(Math.random() * 1000); // Si currentTicket est null, générer un numéro de ticket aléatoire--%>

<%--        // Exemple de mise à jour des informations de files--%>
<%--        document.getElementById('current-ticket-seneau-dakar').innerText = ticketToDisplay;--%>
<%--        document.getElementById('current-ticket-orange-thies').innerText = ticketToDisplay;--%>
<%--        document.getElementById('current-ticket-senelec-saintlouis').innerText = ticketToDisplay;--%>
<%--        document.getElementById('current-ticket-bank-dakar').innerText = ticketToDisplay;--%>
<%--    }--%>

<%--    // Soumission du formulaire Visiteur--%>
<%--    document.getElementById('visitor-form').addEventListener('submit', function(event) {--%>
<%--        event.preventDefault(); // Empêche le rechargement de la page--%>
<%--        const service = document.getElementById('service').value;--%>
<%--        const location = document.getElementById('location').value;--%>

<%--        // Simulation des données du ticket (vous allez récupérer ces données du backend)--%>
<%--        currentTicket = Math.floor(Math.random() * 1000); // Numéro de ticket généré et stocké globalement--%>
<%--        const position = Math.floor(Math.random() * 50) + 1; // Position aléatoire dans la file--%>
<%--        const peopleAhead = position - 1; // Nombre de personnes devant--%>
<%--        const currentTicketProcessing = position === 1 ? currentTicket : currentTicket - position + 1; // Numéro du ticket en cours--%>

<%--        // Affichage des détails du ticket--%>
<%--        document.getElementById('ticket-number').innerText = currentTicket;--%>
<%--        document.getElementById('position').innerText = position;--%>
<%--        document.getElementById('people-ahead').innerText = peopleAhead;--%>
<%--        document.getElementById('current-ticket').innerText = currentTicketProcessing;--%>

<%--        // Afficher la section des détails du ticket--%>
<%--        document.getElementById('ticket-details').style.display = 'block';--%>
<%--    });--%>
<%--</script>--%>


<%--<style>--%>
<%--    body {--%>
<%--        font-family: Arial, sans-serif;--%>
<%--        margin: 0;--%>
<%--        padding: 0;--%>
<%--        background-color: #f4f4f9;--%>
<%--    }--%>
<%--    header {--%>
<%--        background-color: #4CAF50;--%>
<%--        color: white;--%>
<%--        padding: 15px 0;--%>
<%--        text-align: center;--%>
<%--    }--%>
<%--    .container {--%>
<%--        width: 80%;--%>
<%--        margin: 0 auto;--%>
<%--        padding: 20px;--%>
<%--    }--%>
<%--    .role-section {--%>
<%--        display: none;--%>
<%--    }--%>
<%--    .role-section.active {--%>
<%--        display: block;--%>
<%--    }--%>
<%--    button {--%>
<%--        padding: 10px 15px;--%>
<%--        background-color: #4CAF50;--%>
<%--        color: white;--%>
<%--        border: none;--%>
<%--        cursor: pointer;--%>
<%--        font-size: 16px;--%>
<%--        margin-top: 20px;--%>
<%--    }--%>
<%--    button:hover {--%>
<%--        background-color: #45a049;--%>
<%--    }--%>
<%--    select, h3, ul {--%>
<%--        margin-bottom: 20px;--%>
<%--    }--%>
<%--    /* style.css */--%>

<%--    /* Role section styling */--%>
<%--    .role-section {--%>
<%--        display: none;--%>
<%--    }--%>

<%--    .role-section.active {--%>
<%--        display: block;--%>
<%--    }--%>

<%--    /* Ticket details styling */--%>
<%--    .ticket-details {--%>
<%--        margin-top: 20px;--%>
<%--    }--%>

<%--    .ticket-details h3 {--%>
<%--        margin-bottom: 10px;--%>
<%--    }--%>
<%--</style>--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html>
<head>
    <title>File d'Attente</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='src/main/resources/static/css/style.css'/>">

</head>
<body>
<h1>Bienvenue dans le Système de Gestion de File d'Attente</h1>
<form action="<c:url value='/generate-ticket'/>" method="POST">
    <label for="service">Choisissez un service :</label>
    <select name="service" id="service" required>
        <option value="Seneau">Seneau</option>
        <option value="Orange">Orange</option>
        <option value="Senelec">Senelec</option>
        <option value="Bank">Bank</option>
    </select>
    <br>
    <label for="location">Choisissez une localisation :</label>
    <select name="location" id="location" required>
        <option value="Dakar">Dakar</option>
        <option value="Thies">Thiès</option>
        <option value="Saint-Louis">Saint-Louis</option>
    </select>
    <br>
    <button type="submit">Obtenir un ticket</button>
</form>

</body>
<style>
    /* Corps général */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    /* En-tête */
    h1 {
        text-align: center;
        color: #4CAF50;
        margin-top: 30px;
    }

    /* Conteneur principal */
    form {
        width: 50%;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    /* Labels */
    label {
        font-size: 16px;
        margin-bottom: 10px;
        display: block;
    }

    /* Sélection des services et localisations */
    select {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ddd;
        font-size: 14px;
    }

    /* Bouton d'envoi */
    button {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Liens */
    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        font-size: 16px;
        color: #4CAF50;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

</style>
</html>
