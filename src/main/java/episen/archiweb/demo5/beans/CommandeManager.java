package episen.archiweb.demo5.beans;

import java.util.ArrayList;
import java.util.List;

public class CommandeManager {
    private static List<Commande> objects = new ArrayList<>();

    public static void addObject(Commande object) {
        objects.add(object);
    }

    public static List<Commande> getAllObjects() {
        return new ArrayList<>(objects);
    }

    public static Commande getLastObject() {
        if (!objects.isEmpty()) {
            return objects.get(objects.size() - 1);
        }
        return null;
    }
}
