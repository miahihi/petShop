/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author my do
 */
public class Item {
    private shopProduct product;
    private int num;

    public Item() {
    }

    public Item(shopProduct product, int quantity) {
        this.product = product;
        this.num = quantity;
    }

    public shopProduct getProduct() {
        return product;
    }

    public void setProduct(shopProduct product) {
        this.product = product;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

   
    
}
