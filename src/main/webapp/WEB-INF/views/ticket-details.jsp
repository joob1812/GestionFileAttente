<!DOCTYPE html>
<html>
<head>
    <title>Votre Ticket</title>
</head>
<body>
<h1>Votre Ticket</h1>
<p>Numéro de ticket : ${ticket.ticketNumber}</p>
<p>Service : ${ticket.service}</p>
<p>Localisation : ${ticket.location}</p>

<!-- Informations supplémentaires -->
<p>Vous êtes à la ${queuePosition}ème position dans la file.</p>
<p>Il y a ${peopleAhead} personne(s) devant vous.</p>
<p>Le numéro actuellement en traitement est : ${currentProcessingNumber}</p>

<a href="/">Retour</a>
<a href="agent-dashboard.jsp">Agent Dashboard</a>
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
        margin-top: 50px;
    }

    /* Conteneur du ticket */
    .ticket-container {
        width: 40%;
        margin: 50px auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    /* Affichage des détails du ticket */
    p {
        font-size: 18px;
        margin: 15px 0;
        color: #333;
    }

    /* Style du lien de retour */
    a {
        display: inline-block;
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
