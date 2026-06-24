public class Main {

    public static void main(String[] args) {

        EmployeeManagement em =
                new EmployeeManagement();

        em.addEmployee(
                new Employee(1,
                        "Prabath",
                        "Developer"));

        em.display();
    }
}