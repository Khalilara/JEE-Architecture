package episen.archiweb.demo5.servlets;

import episen.archiweb.demo5.beans.Client;
import episen.archiweb.demo5.beans.ClientManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/creer-client")
public class ClientServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Récupération des paramètres
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");

        // Validation des données
        boolean hasErrors = false;
        if (nom == null || nom.trim().isEmpty()) {
            request.setAttribute("errorNom", "Le nom est obligatoire");
            hasErrors = true;
        }
        if (prenom == null || prenom.trim().isEmpty()) {
            request.setAttribute("errorPrenom", "Le prénom est obligatoire");
            hasErrors = true;
        }
        if (email == null || !email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            request.setAttribute("errorEmail", "L'email est invalide");
            hasErrors = true;
        }
        if (telephone == null || !telephone.matches("^\\+?[0-9]{10,13}$")) {
            request.setAttribute("errorTelephone", "Le numéro de téléphone est invalide");
            hasErrors = true;
        }

        // Conservation des valeurs saisies
        request.setAttribute("nom", nom);
        request.setAttribute("prenom", prenom);
        request.setAttribute("email", email);
        request.setAttribute("telephone", telephone);

        // Gestion des erreurs
        if (hasErrors) {
            request.getRequestDispatcher("/formulaireClient.jsp").forward(request, response);
            return;
        }

        // Création du client après la validation
        Client client = new Client(nom, prenom, email, telephone);
        ClientManager.addObject(client);

        // Ajouter l'objet client à la requête pour la fiche client
        request.setAttribute("client", client);

        // Redirection vers la page de confirmation (fiche client)
        request.getRequestDispatcher("/ficheClient.jsp").forward(request, response);
    }
}
