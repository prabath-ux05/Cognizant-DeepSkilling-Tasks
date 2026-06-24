public class Main {

    public static void main(String[] args) {

        StockMarket stockMarket = new StockMarket();

        stockMarket.registerObserver(new MobileApp());
        stockMarket.registerObserver(new WebApp());

        stockMarket.setStockPrice(2500);
    }
}