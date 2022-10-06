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
    private int idPosition;
    private int idEducationDegree;
    private int idDivision;
    private String userName;



    public Employee() {
    }

    public Employee(String nameEmployee, String birthDay, String idCardEmployee, double salaryEmployee, String phoneNumberEmployee, String emailEmployee, String addressEmployee, int idPosition, int idEducationDegree, int idDivision, String userName) {
        this.nameEmployee = nameEmployee;
        this.birthDay = birthDay;
        this.idCardEmployee = idCardEmployee;
        this.salaryEmployee = salaryEmployee;
        this.phoneNumberEmployee = phoneNumberEmployee;
        this.emailEmployee = emailEmployee;
        this.addressEmployee = addressEmployee;
        this.idPosition = idPosition;
        this.idEducationDegree = idEducationDegree;
        this.idDivision = idDivision;
        this.userName = userName;
    }

    public Employee(int idEmployee, String nameEmployee, String birthDay, String idCardEmployee, double salaryEmployee, String phoneNumberEmployee, String emailEmployee, String addressEmployee, int idPosition, int idEducationDegree, int idDivision, String userName) {
        this.idEmployee = idEmployee;
        this.nameEmployee = nameEmployee;
        this.birthDay = birthDay;
        this.idCardEmployee = idCardEmployee;
        this.salaryEmployee = salaryEmployee;
        this.phoneNumberEmployee = phoneNumberEmployee;
        this.emailEmployee = emailEmployee;
        this.addressEmployee = addressEmployee;
        this.idPosition = idPosition;
        this.idEducationDegree = idEducationDegree;
        this.idDivision = idDivision;
        this.userName = userName;
    }

    public Employee(int id, String name, String birthDay, String idCard, String salary, String phone, String email, String positionId, String educationDegreeId, String divisionId, String userName) {


    }

    public int getIdEmployee() {
        return idEmployee;
    }

    public void setIdEmployee(int idEmployee) {
        this.idEmployee = idEmployee;
    }

    public String getNameEmployee() {
        return nameEmployee;
    }

    public void setNameEmployee(String nameEmployee) {
        this.nameEmployee = nameEmployee;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getIdCardEmployee() {
        return idCardEmployee;
    }

    public void setIdCardEmployee(String idCardEmployee) {
        this.idCardEmployee = idCardEmployee;
    }

    public double getSalaryEmployee() {
        return salaryEmployee;
    }

    public void setSalaryEmployee(double salaryEmployee) {
        this.salaryEmployee = salaryEmployee;
    }

    public String getPhoneNumberEmployee() {
        return phoneNumberEmployee;
    }

    public void setPhoneNumberEmployee(String phoneNumberEmployee) {
        this.phoneNumberEmployee = phoneNumberEmployee;
    }

    public String getEmailEmployee() {
        return emailEmployee;
    }

    public void setEmailEmployee(String emailEmployee) {
        this.emailEmployee = emailEmployee;
    }

    public String getAddressEmployee() {
        return addressEmployee;
    }

    public void setAddressEmployee(String addressEmployee) {
        this.addressEmployee = addressEmployee;
    }

    public int getIdPosition() {
        return idPosition;
    }

    public void setIdPosition(int idPosition) {
        this.idPosition = idPosition;
    }

    public int getIdEducationDegree() {
        return idEducationDegree;
    }

    public void setIdEducationDegree(int idEducationDegree) {
        this.idEducationDegree = idEducationDegree;
    }

    public int getIdDivision() {
        return idDivision;
    }

    public void setIdDivision(int idDivision) {
        this.idDivision = idDivision;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
