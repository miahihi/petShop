/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.Date;

/**
 *
 * @author my do
 */
public class order {
//    [id]
//      ,[total]
//      ,[note]
//      ,[status]
//      ,[orderDate]
//      ,[UserID]
    private int id;
    private double total;
    private String note;
    private String status;
    private Date date;
    private int uid ;

    public order() {
    }

    public order(int id, double total, String note, String status, Date date, int uid) {
        this.id = id;
        this.total = total;
        this.note = note;
        this.status = status;
        this.date = date;
        this.uid = uid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
    
}
