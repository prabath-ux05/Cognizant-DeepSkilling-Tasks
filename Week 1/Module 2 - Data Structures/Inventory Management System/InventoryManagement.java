import java.util.ArrayList;

public class InventoryManagement {

    private ArrayList<Product> products =
            new ArrayList<>();

    public void addProduct(Product product) {
        products.add(product);
    }

    public void displayProducts() {

        for(Product product : products) {
            System.out.println(product);
        }
    }
}