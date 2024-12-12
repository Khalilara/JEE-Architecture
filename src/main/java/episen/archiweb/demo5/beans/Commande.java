package episen.archiweb.demo5.beans;

public class Commande {
    private String reference;
    private String nomClient;
    private double montantTotal;
    private int nombreArticles;
    private String dateCommande;

    // Constructeurs
    public Commande() {}

    public Commande(String reference, String nomClient, double montantTotal, int nombreArticles, String dateCommande) {
        this.reference = reference;
        this.nomClient = nomClient;
        this.montantTotal = montantTotal;
        this.nombreArticles = nombreArticles;
        this.dateCommande = dateCommande;
    }

    // Getters et Setters
    public String getReference() { return reference; }
    public void setReference(String reference) { this.reference = reference; }

    public String getNomClient() { return nomClient; }
    public void setNomClient(String nomClient) { this.nomClient = nomClient; }

    public double getMontantTotal() { return montantTotal; }
    public void setMontantTotal(double montantTotal) { this.montantTotal = montantTotal; }

    public int getNombreArticles() { return nombreArticles; }
    public void setNombreArticles(int nombreArticles) { this.nombreArticles = nombreArticles; }

    public String getDateCommande() { return dateCommande; }
    public void setDateCommande(String dateCommande) { this.dateCommande = dateCommande; }
}
