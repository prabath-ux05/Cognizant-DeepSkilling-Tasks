public class Main {

    public static void main(String[] args) {

        Book[] books = {

                new Book(1,"Java"),
                new Book(2,"DSA")
        };

        Book result =
                Library.search(
                        books,
                        "Java");

        System.out.println(result.title);
    }
}