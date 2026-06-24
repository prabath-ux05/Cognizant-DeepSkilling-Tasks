public class StudentView {

    public void displayStudentDetails(Student student) {

        System.out.println(
                student.getName() + " "
                        + student.getId() + " "
                        + student.getGrade()
        );
    }
}