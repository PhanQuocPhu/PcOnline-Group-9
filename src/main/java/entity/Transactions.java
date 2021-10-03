package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class Transactions {
    private int id;
    private int trUserId;
    private int trTotal;
    private String trNote;
    private String trAddress;
    private String trPhone;
    private byte trStatus;
    private byte trPayment;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "trUserId")
    public int getTrUserId() {
        return trUserId;
    }

    public void setTrUserId(int trUserId) {
        this.trUserId = trUserId;
    }

    @Basic
    @Column(name = "trTotal")
    public int getTrTotal() {
        return trTotal;
    }

    public void setTrTotal(int trTotal) {
        this.trTotal = trTotal;
    }

    @Basic
    @Column(name = "trNote")
    public String getTrNote() {
        return trNote;
    }

    public void setTrNote(String trNote) {
        this.trNote = trNote;
    }

    @Basic
    @Column(name = "trAddress")
    public String getTrAddress() {
        return trAddress;
    }

    public void setTrAddress(String trAddress) {
        this.trAddress = trAddress;
    }

    @Basic
    @Column(name = "trPhone")
    public String getTrPhone() {
        return trPhone;
    }

    public void setTrPhone(String trPhone) {
        this.trPhone = trPhone;
    }

    @Basic
    @Column(name = "trStatus")
    public byte getTrStatus() {
        return trStatus;
    }

    public void setTrStatus(byte trStatus) {
        this.trStatus = trStatus;
    }

    @Basic
    @Column(name = "trPayment")
    public byte getTrPayment() {
        return trPayment;
    }

    public void setTrPayment(byte trPayment) {
        this.trPayment = trPayment;
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

        Transactions that = (Transactions) o;

        if (id != that.id) return false;
        if (trUserId != that.trUserId) return false;
        if (trTotal != that.trTotal) return false;
        if (trStatus != that.trStatus) return false;
        if (trPayment != that.trPayment) return false;
        if (trNote != null ? !trNote.equals(that.trNote) : that.trNote != null) return false;
        if (trAddress != null ? !trAddress.equals(that.trAddress) : that.trAddress != null) return false;
        if (trPhone != null ? !trPhone.equals(that.trPhone) : that.trPhone != null) return false;
        if (createdAt != null ? !createdAt.equals(that.createdAt) : that.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(that.updatedAt) : that.updatedAt != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + trUserId;
        result = 31 * result + trTotal;
        result = 31 * result + (trNote != null ? trNote.hashCode() : 0);
        result = 31 * result + (trAddress != null ? trAddress.hashCode() : 0);
        result = 31 * result + (trPhone != null ? trPhone.hashCode() : 0);
        result = 31 * result + (int) trStatus;
        result = 31 * result + (int) trPayment;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        return result;
    }
}
