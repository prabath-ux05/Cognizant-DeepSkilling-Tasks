public class Main {

    public static void main(String[] args) {

        TaskLinkedList list =
                new TaskLinkedList();

        list.addTask(
                new Task(1,"Coding"));

        list.addTask(
                new Task(2,"Testing"));

        list.display();
    }
}