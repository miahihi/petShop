/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author my do
 */
public class Cart {

    private List<Item> items;
//    private String note;
//    private String status;
//
//    public Cart(List<Item> items, String note, String status) {
//        this.items = items;
//        this.note = note;
//        this.status = status;
//    }
//    

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    private Item getItemById(int id) {
        for (Item o : items) {
            if (o.getProduct().getId() == id) {
                return o;
            }
        }
        return null;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getNum();
    }

    //xử lí vc add vào giỏ hàng
    //1: khi trong giỏ hàng đã có sp đấy(tăng quantity)
    //2: khi chư có sp trong giỏ hàng: add new
    public void addItem(Item i) {
        if (getItemById(i.getProduct().getId()) != null) {
            Item c = getItemById(i.getProduct().getId());
            c.setNum(i.getNum() + c.getNum());
        } else {
            items.add(i);
        }
    }

    //remove item
    public void delItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    //total
    public double getTotal() {
        double t = 0;
        for (Item o : items) {
            t += (o.getNum() * o.getProduct().getDiscount());
        }
        return t;
    }

    private shopProduct getProductById(int id, List<shopProduct> list) {
        for (shopProduct o : list) {
            if (o.getId() == id) {
                return o;
            }
        }
        return null;
    }

    public Cart(String txt, List<shopProduct> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("!");
                for (String i : s) {
                    String[] n = i.split("_");
                    int id= Integer.parseInt(n[0]);
                    int num= Integer.parseInt(n[1]);
                    shopProduct p =getProductById(id, list);
                    Item t = new Item(p, num);
                    addItem(t);
                }
            }
        } catch (Exception e) {
        }

    }

}
