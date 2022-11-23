/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author my do
 */
public class orderDetail {
    private int id;
    private String name;
    private String uname;
    private String phone;
    private String addr;
    private String date;
    private double total;
    private int quantity;
    private String pName;

    public orderDetail() {
    }

    public orderDetail(int id, String name, String uname, String phone, String addr, String date, double total, int quantity, String pName) {
        this.id = id;
        this.name = name;
        this.uname = uname;
        this.phone = phone;
        this.addr = addr;
        this.date = date;
        this.total = total;
        this.quantity = quantity;
        this.pName = pName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    @Override
    public String toString() {
        return "orderDetail{" + "id=" + id + ", name=" + name + ", uname=" + uname + ", phone=" + phone + ", addr=" + addr + ", date=" + date + ", total=" + total + ", quantity=" + quantity + ", pName=" + pName + '}';
    }
    
    
    
}
