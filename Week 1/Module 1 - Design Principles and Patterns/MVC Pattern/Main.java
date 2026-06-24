public class Main {

    public static void main(String[] args) {

        Student student =
                new Student("Prabath","101","A");

        StudentView view = new StudentView();

        StudentController controller =
                new StudentController(student, view);

        controller.updateView();

        controller.updateGrade("A+");

        controller.updateView();
    }
}