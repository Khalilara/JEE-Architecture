<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fiche Commande</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
  <div class="card">
    <div class="card-header bg-primary text-white">
      <h2>Fiche Commande</h2>
    </div>
    <div class="card-body">
      <p><strong>Référence:</strong> ${commande.reference}</p>
      <p><strong>Nom du Client:</strong> ${commande.nomClient}</p>
      <p><strong>Montant Total:</strong> ${commande.montantTotal} €</p>
      <p><strong>Nombre d'Articles:</strong> ${commande.nombreArticles}</p>
      <p><strong>Date de Commande:</strong> ${commande.dateCommande}</p>
    </div>
    <div class="card-footer text-center">
      <a href="formulaireCommande.jsp" class="btn btn-success me-2">Créer une autre commande</a>
      <a href="index.jsp" class="btn btn-secondary">Home</a>
    </div>
  </div>
</div>
</body>
</html>
