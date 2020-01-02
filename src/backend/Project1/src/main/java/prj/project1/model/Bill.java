/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.model;

import java.sql.Timestamp;

/**
 *
 * @author GD
 */
public class Bill {
    private long billID;
    private long ID;
    private long total;
    private String payment;
    private String address;
    private Timestamp date;
    public Bill(){
        
    }

    public Bill(long billID, long ID, long total, String payment, String address, Timestamp date) {
        this.billID = billID;
        this.ID = ID;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.date = date;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public long getID() {
        return ID;
    }

    public void setID(long ID) {
        this.ID = ID;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
    
}
