<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="episen.archiweb.demo5.beans.Client, episen.archiweb.demo5.beans.ClientManager" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
  <title>Détails des Clients</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f7fa;
      margin: 0;
      padding: 20px;
    }

    h1, h2 {
      color: #333;
    }

    table {
      border-collapse: collapse;
      width: 100%;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
    }

    th {
      background-color: #4CAF50;
      color: white;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #ddd;
    }

    a {
      text-decoration: none;
      color: white;
      background-color: #4CAF50;
      padding: 10px 15px;
      border-radius: 5px;
      margin-top: 20px;
      display: inline-block;
    }

    a:hover {
      background-color: #45a049;
    }

    .client-section {
      margin-bottom: 30px;
    }

    .client-details p {
      margin: 5px 0;
    }
  </style>
</head>
<body>
<h1>Liste des Clients</h1>

<div class="client-section">
  <%
    Client lastClient = (Client) request.getAttribute("client");
    if (lastClient != null) {
  %>
  <h2>Dernier Client Créé</h2>
  <div class="client-details">
    <p><strong>Nom :</strong> <%= lastClient.getNom() %></p>
    <p><strong>Prénom :</strong> <%= lastClient.getPrenom() %></p>
    <p><strong>Email :</strong> <%= lastClient.getEmail() %></p>
    <p><strong>Téléphone :</strong> <%= lastClient.getTelephone() %></p>
  </div>
  <%
    }
  %>
</div>

<h2>Tous les Clients</h2>
<table>
  <tr>
    <th>Nom</th>
    <th>Prénom</th>
    <th>Email</th>
    <th>Téléphone</th>
    <th>Détails Supplémentaires</th>
  </tr>
  <%
    List<Client> allClients = ClientManager.getAllObjects();
    for (Client client : allClients) {
  %>
  <tr>
    <td><%= client.getNom() %></td>
    <td><%= client.getPrenom() %></td>
    <td><%= client.getEmail() %></td>
    <td><%= client.getTelephone() %></td>
  </tr>
  <% } %>
</table>

<br>
<a href="formulaireClient.jsp">Créer un nouveau client</a>
<a href="index.jsp">Home</a>
</body>
</html>
