/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author my do
 */
public class account {

    private int id;
    private String username;
    private String pass;
    private String name;
    private String email;
    private String phone;
    private String addr;
    private int role;

    public account() {
    }

    public account(int id, String username, String pass, String name, String email, String phone, String addr, int role) {
        this.id = id;
        this.username = username;
        this.pass = pass;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.addr = addr;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "account{" + "id=" + id + ", username=" + username + ", pass=" + pass + ", name=" + name + ", email=" + email + ", phone=" + phone + ", addr=" + addr + ", role=" + role + '}';
    }

}
