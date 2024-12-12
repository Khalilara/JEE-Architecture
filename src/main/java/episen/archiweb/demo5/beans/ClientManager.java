package episen.archiweb.demo5.beans;


import java.util.ArrayList;
import java.util.List;

public class ClientManager {
    private static List<Client> objects = new ArrayList<>();

    public static void addObject(Client object) {
        objects.add(object);
    }

    public static List<Client> getAllObjects() {
        return new ArrayList<>(objects);
    }

    public static Client getLastObject() {
        if (!objects.isEmpty()) {
            return objects.get(objects.size() - 1);
        }
        return null;
    }
}