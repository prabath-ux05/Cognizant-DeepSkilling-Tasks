public class TaskLinkedList {

    Task head;

    public void addTask(Task task) {

        if(head == null) {

            head = task;
            return;
        }

        Task current = head;

        while(current.next != null)
            current = current.next;

        current.next = task;
    }

    public void display() {

        Task current = head;

        while(current != null) {

            System.out.println(
                    current.taskName);

            current = current.next;
        }
    }
}