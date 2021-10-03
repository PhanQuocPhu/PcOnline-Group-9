package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class Payments {
    private long id;
    private Integer pMoney;
    private String pNote;
    private String pVnpResponseCode;
    private String pCodeVnp;
    private String pCodeBank;
    private Timestamp pTime;
    private String pTransactionCode;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "pMoney")
    public Integer getpMoney() {
        return pMoney;
    }

    public void setpMoney(Integer pMoney) {
        this.pMoney = pMoney;
    }

    @Basic
    @Column(name = "pNote")
    public String getpNote() {
        return pNote;
    }

    public void setpNote(String pNote) {
        this.pNote = pNote;
    }

    @Basic
    @Column(name = "pVnpResponseCode")
    public String getpVnpResponseCode() {
        return pVnpResponseCode;
    }

    public void setpVnpResponseCode(String pVnpResponseCode) {
        this.pVnpResponseCode = pVnpResponseCode;
    }

    @Basic
    @Column(name = "pCodeVnp")
    public String getpCodeVnp() {
        return pCodeVnp;
    }

    public void setpCodeVnp(String pCodeVnp) {
        this.pCodeVnp = pCodeVnp;
    }

    @Basic
    @Column(name = "pCodeBank")
    public String getpCodeBank() {
        return pCodeBank;
    }

    public void setpCodeBank(String pCodeBank) {
        this.pCodeBank = pCodeBank;
    }

    @Basic
    @Column(name = "pTime")
    public Timestamp getpTime() {
        return pTime;
    }

    public void setpTime(Timestamp pTime) {
        this.pTime = pTime;
    }

    @Basic
    @Column(name = "pTransactionCode")
    public String getpTransactionCode() {
        return pTransactionCode;
    }

    public void setpTransactionCode(String pTransactionCode) {
        this.pTransactionCode = pTransactionCode;
    }

    @Basic
    @Column(name = "created_at")
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

        Payments payments = (Payments) o;

        if (id != payments.id) return false;
        if (pMoney != null ? !pMoney.equals(payments.pMoney) : payments.pMoney != null) return false;
        if (pNote != null ? !pNote.equals(payments.pNote) : payments.pNote != null) return false;
        if (pVnpResponseCode != null ? !pVnpResponseCode.equals(payments.pVnpResponseCode) : payments.pVnpResponseCode != null)
            return false;
        if (pCodeVnp != null ? !pCodeVnp.equals(payments.pCodeVnp) : payments.pCodeVnp != null) return false;
        if (pCodeBank != null ? !pCodeBank.equals(payments.pCodeBank) : payments.pCodeBank != null) return false;
        if (pTime != null ? !pTime.equals(payments.pTime) : payments.pTime != null) return false;
        if (pTransactionCode != null ? !pTransactionCode.equals(payments.pTransactionCode) : payments.pTransactionCode != null)
            return false;
        if (createdAt != null ? !createdAt.equals(payments.createdAt) : payments.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(payments.updatedAt) : payments.updatedAt != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (pMoney != null ? pMoney.hashCode() : 0);
        result = 31 * result + (pNote != null ? pNote.hashCode() : 0);
        result = 31 * result + (pVnpResponseCode != null ? pVnpResponseCode.hashCode() : 0);
        result = 31 * result + (pCodeVnp != null ? pCodeVnp.hashCode() : 0);
        result = 31 * result + (pCodeBank != null ? pCodeBank.hashCode() : 0);
        result = 31 * result + (pTime != null ? pTime.hashCode() : 0);
        result = 31 * result + (pTransactionCode != null ? pTransactionCode.hashCode() : 0);
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        return result;
    }
}
