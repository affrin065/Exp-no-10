/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ip;

/**
 *
 * @author Admin
 */
public class emp {
    private String name;
private String date;
private double salary;
public emp()
        {
}
public emp( String name, double salary, String date) {
this.name = name;
this.date = date;
this.salary= salary;
}
public String getName() {
return name;
}
public void setName(String name) {
this.name = name;
}
public double getsalary() {
return salary;
}  
public void setsalary(double salary) {
this.salary = salary;
}
public String getdate() {
return date;
}
public void setQuantity(String date)
{
this.date = date;
}
    
}
