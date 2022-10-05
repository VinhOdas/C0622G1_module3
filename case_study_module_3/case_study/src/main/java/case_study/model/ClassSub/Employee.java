package case_study.model.ClassSub;

public class Employee {
    private int idEmployee;
    private String nameEmployee;
    private String birthDay;
    private String idCardEmployee;
    private double salaryEmployee;
    private String phoneNumberEmployee;
    private String emailEmployee;
    private String addressEmployee;
    private String idPosition;
    private String userName;
    private String idEducationDegree;
    private String id_division;

    public Employee() {
    }

    public Employee(int idEmployee, String nameEmployee, String birthDay,
                    String idCardEmployee, double salaryEmployee,
                    String phoneNumberEmployee, String emailEmployee,
                    String addressEmployee) {
        this.idEmployee = idEmployee;
        this.nameEmployee = nameEmployee;
        this.birthDay = birthDay;
        this.idCardEmployee = idCardEmployee;
        this.salaryEmployee = salaryEmployee;
        this.phoneNumberEmployee = phoneNumberEmployee;
        this.emailEmployee = emailEmployee;
        this.addressEmployee = addressEmployee;
    }

    public int getIdEmployee() {
        return idEmployee;
    }

    public String getNameEmployee() {
        return nameEmployee;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public String getIdCardEmployee() {
        return idCardEmployee;
    }

    public double getSalaryEmployee() {
        return salaryEmployee;
    }

    public String getPhoneNumberEmployee() {
        return phoneNumberEmployee;
    }

    public String getEmailEmployee() {
        return emailEmployee;
    }

    public String getAddressEmployee() {
        return addressEmployee;
    }

    public void setIdEmployee(int idEmployee) {
        this.idEmployee = idEmployee;
    }

    public void setNameEmployee(String nameEmployee) {
        this.nameEmployee = nameEmployee;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public void setIdCardEmployee(String idCardEmployee) {
        this.idCardEmployee = idCardEmployee;
    }

    public void setSalaryEmployee(double salaryEmployee) {
        this.salaryEmployee = salaryEmployee;
    }

    public void setPhoneNumberEmployee(String phoneNumberEmployee) {
        this.phoneNumberEmployee = phoneNumberEmployee;
    }

    public void setEmailEmployee(String emailEmployee) {
        this.emailEmployee = emailEmployee;
    }

    public void setAddressEmployee(String addressEmployee) {
        this.addressEmployee = addressEmployee;
    }

}
