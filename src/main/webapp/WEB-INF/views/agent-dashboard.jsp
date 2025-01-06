<!DOCTYPE html>
<html>
<head>
    <title>Dashboard de l'Agent</title>
</head>
<body>
<h1>Dashboard de l'Agent</h1>

<h2>Numéro actuellement en cours de traitement : ${currentNumber}</h2>

<form action="/agent/next" method="POST">
    <label for="service">Choisissez un service :</label>
    <select name="service" id="service">
        <option value="Seneau">Seneau</option>
        <option value="Orange">Orange</option>
        <option value="Senelec">Senelec</option>
        <option value="Bank">Bank</option>
    </select>

    <label for="location">Choisissez une localisation :</label>
    <select name="location" id="location">
        <option value="Dakar">Dakar</option>
        <option value="Thies">Thiès</option>
        <option value="Saint-Louis">Saint-Louis</option>
    </select>

    <button type="submit">Client suivant</button>
</form>

<form action="/agent/previous" method="POST">
    <label for="service">Choisissez un service :</label>
    <select name="service" id="service">
        <option value="Seneau">Seneau</option>
        <option value="Orange">Orange</option>
        <option value="Senelec">Senelec</option>
        <option value="Bank">Bank</option>
    </select>

    <label for="location">Choisissez une localisation :</label>
    <select name="location" id="location">
        <option value="Dakar">Dakar</option>
        <option value="Thies">Thiès</option>
        <option value="Saint-Louis">Saint-Louis</option>
    </select>

    <button type="submit">Client précédent</button>
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
        margin-top: 50px;
    }

    /* Conteneur principal */
    .agent-dashboard {
        width: 60%;
        margin: 50px auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    /* Informations sur le client en cours */
    .client-info {
        font-size: 18px;
        margin: 15px 0;
        color: #333;
        text-align: center;
    }

    /* Les boutons pour "Client suivant" et "Client précédent" */
    button {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 45%;
        margin: 10px;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Style pour les boutons "Client suivant" et "Client précédent" */
    button.next {
        float: right;
    }

    button.previous {
        float: left;
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

    /* Message d'erreur si nécessaire */
    .error {
        color: red;
        font-size: 16px;
        text-align: center;
        margin-top: 20px;
    }

</style>
</html>
