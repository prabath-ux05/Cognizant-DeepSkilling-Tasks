public class Main {

    public static void main(String[] args) {

        Order[] orders = {

                new Order(1,4000),
                new Order(2,2000),
                new Order(3,7000)
        };

        BubbleSort.sort(orders);

        for(Order order : orders)
            System.out.println(order.totalPrice);
    }
}