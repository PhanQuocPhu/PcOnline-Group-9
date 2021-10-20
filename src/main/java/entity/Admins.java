package entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "admins")
public class Admins implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "phone")
    private String phone;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "active", nullable = false)
    private Integer active;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "remember_token")
    private String rememberToken;

    @Column(name = "address")
    private String address;

    @Column(name = "created_at")
    private Date createdAt;

    @Column(name = "updated_at")
    private Date updatedAt;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setActive(Integer active) {
        this.active = active;
    }

    public Integer getActive() {
        return active;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setRememberToken(String rememberToken) {
        this.rememberToken = rememberToken;
    }

    public String getRememberToken() {
        return rememberToken;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    @Override
    public String toString() {
        return "Admins{" +
                "id=" + id + '\'' +
                "name=" + name + '\'' +
                "email=" + email + '\'' +
                "phone=" + phone + '\'' +
                "avatar=" + avatar + '\'' +
                "active=" + active + '\'' +
                "password=" + password + '\'' +
                "rememberToken=" + rememberToken + '\'' +
                "address=" + address + '\'' +
                "createdAt=" + createdAt + '\'' +
                "updatedAt=" + updatedAt + '\'' +
                '}';
    }
}
