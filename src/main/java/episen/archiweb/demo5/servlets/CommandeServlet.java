package episen.archiweb.demo5.servlets;

import episen.archiweb.demo5.beans.Commande;
import episen.archiweb.demo5.beans.CommandeManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/creer-commande")
public class CommandeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Récupération des paramètres
        String reference = request.getParameter("reference");
        String nomClient = request.getParameter("nomClient");
        String montantStr = request.getParameter("montantTotal");
        String articlesStr = request.getParameter("nombreArticles");

        // Validation des données
        boolean hasErrors = false;
        double montantTotal = 0;
        int nombreArticles = 0;

        if (reference == null || reference.trim().isEmpty()) {
            request.setAttribute("errorReference", "La référence est obligatoire");
            hasErrors = true;
        }
        if (nomClient == null || nomClient.trim().isEmpty()) {
            request.setAttribute("errorNomClient", "Le nom du client est obligatoire");
            hasErrors = true;
        }
        try {
            montantTotal = Double.parseDouble(montantStr);
            if (montantTotal <= 0) {
                request.setAttribute("errorMontant", "Le montant doit être positif");
                hasErrors = true;
            }
        } catch (NumberFormatException e) {
            request.setAttribute("errorMontant", "Le montant est invalide");
            hasErrors = true;
        }
        try {
            nombreArticles = Integer.parseInt(articlesStr);
            if (nombreArticles <= 0) {
                request.setAttribute("errorArticles", "Le nombre d'articles doit être positif");
                hasErrors = true;
            }
        } catch (NumberFormatException e) {
            request.setAttribute("errorArticles", "Le nombre d'articles est invalide");
            hasErrors = true;
        }

        // Conservation des valeurs saisies
        request.setAttribute("reference", reference);
        request.setAttribute("nomClient", nomClient);
        request.setAttribute("montantTotal", montantStr);
        request.setAttribute("nombreArticles", articlesStr);

        // Gestion des erreurs
        if (hasErrors) {
            request.getRequestDispatcher("/formulaireCommande.jsp").forward(request, response);
            return;
        }

        // Date de la commande
        String dateCommande = new SimpleDateFormat("dd/MM/yyyy").format(new Date());

        // Création du bean commande
        Commande commande = new Commande(reference, nomClient, montantTotal, nombreArticles, dateCommande);
        CommandeManager.addObject(commande);
        request.setAttribute("commande", commande);

        // Redirection vers la page de confirmation
        request.getRequestDispatcher("/ficheCommande.jsp").forward(request, response);
    }
}