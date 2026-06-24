public class Main {

    public static void main(String[] args) {

        InventoryManagement inventory =
                new InventoryManagement();

        inventory.addProduct(
                new Product(1,"Laptop",10,55000));

        inventory.addProduct(
                new Product(2,"Mouse",50,500));

        inventory.displayProducts();
    }
}