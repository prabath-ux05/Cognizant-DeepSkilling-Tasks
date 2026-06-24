public class Task {

    int taskId;
    String taskName;

    Task next;

    public Task(int taskId,
                String taskName) {

        this.taskId = taskId;
        this.taskName = taskName;
    }
}