/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author my do
 */
public class shopProduct {

    private int id;
    private String name;
    private double price;
    private double discount;
    private String img;
    private String description;
    private int quantity;
    private int cid;

    public shopProduct() {
    }

    public shopProduct(int id, String name, double price, double discount, String img, String description, int quantity, int cid) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.img = img;
        this.description = description;
        this.quantity = quantity;
        this.cid = cid;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    @Override
    public String toString() {
        return "shopProduct{" + "id=" + id + ", name=" + name + ", price=" + price + ", discount=" + discount + ", img=" + img + ", description=" + description + ", quantity=" + quantity + ", cid=" + cid + '}';
    }

    
}
