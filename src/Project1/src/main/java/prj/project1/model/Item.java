/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.model;

/**
 *
 * @author GD
 */
public class Item {
    private Product product;
    private int quantity;

    public Item() {
    }

    public Item(Product poduct, int quantity) {
        this.product = poduct;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
