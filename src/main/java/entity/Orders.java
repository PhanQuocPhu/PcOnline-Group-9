package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class Orders {
    private int id;
    private byte orQty;
    private int orPrice;
    private byte orSale;
    private Timestamp createdAt;
    private Timestamp updatedAt;
    private Transactions transactionsByOrTransactionId;
    private Products productsByOrProductId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "orQty")
    public byte getOrQty() {
        return orQty;
    }

    public void setOrQty(byte orQty) {
        this.orQty = orQty;
    }

    @Basic
    @Column(name = "orPrice")
    public int getOrPrice() {
        return orPrice;
    }

    public void setOrPrice(int orPrice) {
        this.orPrice = orPrice;
    }

    @Basic
    @Column(name = "orSale")
    public byte getOrSale() {
        return orSale;
    }

    public void setOrSale(byte orSale) {
        this.orSale = orSale;
    }

    @Basic
    @Column(name = "createdAt")
    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    @Basic
    @Column(name = "updatedAt")
    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Orders orders = (Orders) o;

        if (id != orders.id) return false;
        if (orQty != orders.orQty) return false;
        if (orPrice != orders.orPrice) return false;
        if (orSale != orders.orSale) return false;
        if (createdAt != null ? !createdAt.equals(orders.createdAt) : orders.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(orders.updatedAt) : orders.updatedAt != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (int) orQty;
        result = 31 * result + orPrice;
        result = 31 * result + (int) orSale;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "orTransactionId", referencedColumnName = "id", nullable = false)
    public Transactions getTransactionsByOrTransactionId() {
        return transactionsByOrTransactionId;
    }

    public void setTransactionsByOrTransactionId(Transactions transactionsByOrTransactionId) {
        this.transactionsByOrTransactionId = transactionsByOrTransactionId;
    }

    @ManyToOne
    @JoinColumn(name = "orProductId", referencedColumnName = "id", nullable = false)
    public Products getProductsByOrProductId() {
        return productsByOrProductId;
    }

    public void setProductsByOrProductId(Products productsByOrProductId) {
        this.productsByOrProductId = productsByOrProductId;
    }
}
