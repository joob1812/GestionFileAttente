<!DOCTYPE html>
<html>
<head>
    <title>Dashboard de l'Admin</title>
</head>
<body>
<h1>Vue Globale des Files d'Attente</h1>

<h2>Liste des files en cours</h2>
<table border="1">
    <thead>
    <tr>
        <th>Service</th>
        <th>Localisation</th>
        <th>Numéro actuel</th>
    </tr>
    </thead>
    <tbody>
    <!-- Boucle pour afficher toutes les files d'attente -->
    <c:forEach var="key" items="${queues}">
        <tr>
            <td>${key.key}</td>
            <td>
                <!-- Localisation obtenue à partir de la clé -->
                <c:forEach var="location" items="${key.value}">
                    <p>${location}</p>
                </c:forEach>
            </td>
            <td>${currentNumbers[key.key]}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
<style>
    /* Corps général */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    /* En-tête du tableau */
    h1 {
        text-align: center;
        color: #4CAF50;
        margin-top: 30px;
    }

    /* Tableau de gestion des files */
    table {
        width: 80%;
        margin: 30px auto;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    /* Entêtes du tableau */
    th {
        background-color: #4CAF50;
        color: white;
    }

    /* Lignes du tableau */
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    /* Style des boutons dans le back-office */
    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Liens */
    a {
        text-align: center;
        display: block;
        margin-top: 30px;
        font-size: 16px;
        color: #4CAF50;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

</style>
</html>
