public class EmployeeManagement {

    Employee[] employees =
            new Employee[5];

    int count = 0;

    public void addEmployee(Employee employee) {

        employees[count++] = employee;
    }

    public void display() {

        for(int i=0;i<count;i++) {

            System.out.println(
                    employees[i].name);
        }
    }
}