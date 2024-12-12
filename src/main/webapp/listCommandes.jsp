<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="episen.archiweb.demo5.beans.Commande, episen.archiweb.demo5.beans.CommandeManager" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
  <title>Liste des Commandes</title>
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
      background-color: #007BFF;
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
      background-color: #007BFF;
      padding: 10px 15px;
      border-radius: 5px;
      margin-top: 20px;
      display: inline-block;
    }

    a:hover {
      background-color: #0056b3;
    }

    .commande-section {
      margin-bottom: 30px;
    }

    .commande-details p {
      margin: 5px 0;
    }
  </style>
</head>
<body>
<h1>Liste des Commandes</h1>

<div class="commande-section">
  <%
    Commande lastCommande = (Commande) request.getAttribute("commande");
    if (lastCommande != null) {
  %>
  <h2>Dernière Commande Créée</h2>
  <div class="commande-details">
    <p><strong>Référence :</strong> <%= lastCommande.getReference() %></p>
    <p><strong>Nom du Client :</strong> <%= lastCommande.getNomClient() %></p>
    <p><strong>Montant Total :</strong> <%= lastCommande.getMontantTotal() %></p>
    <p><strong>Nombre d'Articles :</strong> <%= lastCommande.getNombreArticles() %></p>
    <p><strong>Date de Commande :</strong> <%= lastCommande.getDateCommande() %></p>
  </div>
  <%
    }
  %>
</div>

<h2>Toutes les Commandes</h2>
<table>
  <tr>
    <th>Référence</th>
    <th>Nom du Client</th>
    <th>Montant Total</th>
    <th>Nombre d'Articles</th>
    <th>Date de Commande</th>
  </tr>
  <%
    List<Commande> allCommandes = CommandeManager.getAllObjects();
    for (Commande commande : allCommandes) {
  %>
  <tr>
    <td><%= commande.getReference() %></td>
    <td><%= commande.getNomClient() %></td>
    <td><%= commande.getMontantTotal() %></td>
    <td><%= commande.getNombreArticles() %></td>
    <td><%= commande.getDateCommande() %></td>
  </tr>
  <% } %>
</table>

<br>
<a href="formulaireCommande.jsp">Créer une nouvelle commande</a>
<a href="index.jsp">Home</a>
</body>
</html>
