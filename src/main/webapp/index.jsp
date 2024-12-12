<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commerce en Ligne</title>
    <!-- Intégration de Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #f4f7fa;
        }

        .container {
            max-width: 900px;
            margin-top: 50px;
        }

        .header {
            margin-bottom: 40px;
        }

        .btn-custom {
            width: 200px;
            margin: 10px;
        }

        .btn-custom:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .btn-icon {
            margin-right: 8px;
        }

        .btn-primary, .btn-success, .btn-danger {
            font-size: 16px;
            padding: 12px;
        }

        .row {
            justify-content: center;
        }

        .text-center {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<div class="container">
    <header class="header text-center">
        <h1 class="display-4 text-primary">Bienvenue sur l'application de Commerce en Ligne</h1>
        <p class="lead">Gérez vos clients et vos commandes facilement.</p>
    </header>

    <div class="row d-flex justify-content-center">
        <!-- Boutons d'actions avec des icônes et de meilleures interactions -->
        <div class="col-sm-6 col-md-3 mb-3">
            <a href="formulaireClient.jsp" class="btn btn-primary btn-custom d-flex align-items-center justify-content-center">
                <i class="bi bi-person-plus btn-icon"></i> Créer un Client
            </a>
        </div>

        <div class="col-sm-6 col-md-3 mb-3">
            <a href="formulaireCommande.jsp" class="btn btn-success btn-custom d-flex align-items-center justify-content-center">
                <i class="bi bi-cart-plus btn-icon"></i> Créer une Commande
            </a>
        </div>

        <div class="col-sm-6 col-md-3 mb-3">
            <a href="listClients.jsp" class="btn btn-danger btn-custom d-flex align-items-center justify-content-center">
                <i class="bi bi-person-lines-fill btn-icon"></i> Afficher les Clients
            </a>
        </div>

        <div class="col-sm-6 col-md-3 mb-3">
            <a href="listCommandes.jsp" class="btn btn-primary btn-custom d-flex align-items-center justify-content-center">
                <i class="bi bi-cart-fill btn-icon"></i> Afficher les Commandes
            </a>
        </div>
    </div>

</div>

<!-- Ajout de Bootstrap Icons (nécessaire pour les icônes) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

</body>
</html>
