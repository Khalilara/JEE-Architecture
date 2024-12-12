<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Création de Client</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
  <div class="card">
    <div class="card-header bg-primary text-white">
      <h2>Formulaire de Création de Client</h2>
    </div>
    <div class="card-body">
      <form action="creer-client" method="post">
        <div class="mb-3">
          <label for="nom" class="form-label">Nom:</label>
          <input type="text" id="nom" name="nom" class="form-control" value="${nom}">
          <div class="text-danger">${errorNom}</div>
        </div>
        <div class="mb-3">
          <label for="prenom" class="form-label">Prénom:</label>
          <input type="text" id="prenom" name="prenom" class="form-control" value="${prenom}">
          <div class="text-danger">${errorPrenom}</div>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email:</label>
          <input type="email" id="email" name="email" class="form-control" value="${email}">
          <div class="text-danger">${errorEmail}</div>
        </div>
        <div class="mb-3">
          <label for="telephone" class="form-label">Téléphone:</label>
          <input type="tel" id="telephone" name="telephone" class="form-control" value="${telephone}">
          <div class="text-danger">${errorTelephone}</div>
        </div>
        <div class="text-center">
          <button type="submit" class="btn btn-primary">Créer Client</button>
          <a href="index.jsp" class="btn btn-secondary">Home</a>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
