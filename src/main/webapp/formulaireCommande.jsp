<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Création de Commande</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h2>Formulaire de Création de Commande</h2>
        </div>
        <div class="card-body">
            <form action="creer-commande" method="post">
                <div class="mb-3">
                    <label for="reference" class="form-label">Référence:</label>
                    <input type="text" id="reference" name="reference" class="form-control" value="${reference}">
                    <div class="text-danger">${errorReference}</div>
                </div>
                <div class="mb-3">
                    <label for="nomClient" class="form-label">Nom du Client:</label>
                    <input type="text" id="nomClient" name="nomClient" class="form-control" value="${nomClient}">
                    <div class="text-danger">${errorNomClient}</div>
                </div>
                <div class="mb-3">
                    <label for="montantTotal" class="form-label">Montant Total:</label>
                    <input type="number" id="montantTotal" name="montantTotal" class="form-control" value="${montantTotal}" step="0.01">
                    <div class="text-danger">${errorMontant}</div>
                </div>
                <div class="mb-3">
                    <label for="nombreArticles" class="form-label">Nombre d'Articles:</label>
                    <input type="number" id="nombreArticles" name="nombreArticles" class="form-control" value="${nombreArticles}">
                    <div class="text-danger">${errorArticles}</div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Créer Commande</button>
                    <a href="index.jsp" class="btn btn-secondary">Home</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
