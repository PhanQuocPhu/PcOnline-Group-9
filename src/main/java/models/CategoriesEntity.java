package models;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "categories", schema = "pconlineweb"/*, catalog = ""*/)
public class CategoriesEntity {
    private int id;
    private String cName;
    private String cSlug;
    private String cIcon;
    private String cAvatar;
    private byte cActive;
    private int cTotalProduct;
    private String cTitleSeo;
    private String cDescriptionSeo;
    private String cKeywordSeo;
    private byte cHome;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public CategoriesEntity() {

    }
    public CategoriesEntity(int id, String cName, String cSlug, String cIcon, String cAvatar, byte cActive, int cTotalProduct, String cTitleSeo, String cDescriptionSeo, String cKeywordSeo, byte cHome, Timestamp createdAt, Timestamp updatedAt) {
        this.id = id;
        this.cName = cName;
        this.cSlug = cSlug;
        this.cIcon = cIcon;
        this.cAvatar = cAvatar;
        this.cActive = cActive;
        this.cTotalProduct = cTotalProduct;
        this.cTitleSeo = cTitleSeo;
        this.cDescriptionSeo = cDescriptionSeo;
        this.cKeywordSeo = cKeywordSeo;
        this.cHome = cHome;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }
    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "c_name")
    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    @Basic
    @Column(name = "c_slug")
    public String getcSlug() {
        return cSlug;
    }

    public void setcSlug(String cSlug) {
        this.cSlug = cSlug;
    }

    @Basic
    @Column(name = "c_icon")
    public String getcIcon() {
        return cIcon;
    }

    public void setcIcon(String cIcon) {
        this.cIcon = cIcon;
    }

    @Basic
    @Column(name = "c_avatar")
    public String getcAvatar() {
        return cAvatar;
    }

    public void setcAvatar(String cAvatar) {
        this.cAvatar = cAvatar;
    }

    @Basic
    @Column(name = "c_active")
    public byte getcActive() {
        return cActive;
    }

    public void setcActive(byte cActive) {
        this.cActive = cActive;
    }

    @Basic
    @Column(name = "c_total_product")
    public int getcTotalProduct() {
        return cTotalProduct;
    }

    public void setcTotalProduct(int cTotalProduct) {
        this.cTotalProduct = cTotalProduct;
    }

    @Basic
    @Column(name = "c_title_seo")
    public String getcTitleSeo() {
        return cTitleSeo;
    }

    public void setcTitleSeo(String cTitleSeo) {
        this.cTitleSeo = cTitleSeo;
    }

    @Basic
    @Column(name = "c_description_seo")
    public String getcDescriptionSeo() {
        return cDescriptionSeo;
    }

    public void setcDescriptionSeo(String cDescriptionSeo) {
        this.cDescriptionSeo = cDescriptionSeo;
    }

    @Basic
    @Column(name = "c_keyword_seo")
    public String getcKeywordSeo() {
        return cKeywordSeo;
    }

    public void setcKeywordSeo(String cKeywordSeo) {
        this.cKeywordSeo = cKeywordSeo;
    }

    @Basic
    @Column(name = "c_home")
    public byte getcHome() {
        return cHome;
    }

    public void setcHome(byte cHome) {
        this.cHome = cHome;
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
    @Column(name = "updated_at")
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

        CategoriesEntity that = (CategoriesEntity) o;

        if (id != that.id) return false;
        if (cActive != that.cActive) return false;
        if (cTotalProduct != that.cTotalProduct) return false;
        if (cHome != that.cHome) return false;
        if (cName != null ? !cName.equals(that.cName) : that.cName != null) return false;
        if (cSlug != null ? !cSlug.equals(that.cSlug) : that.cSlug != null) return false;
        if (cIcon != null ? !cIcon.equals(that.cIcon) : that.cIcon != null) return false;
        if (cAvatar != null ? !cAvatar.equals(that.cAvatar) : that.cAvatar != null) return false;
        if (cTitleSeo != null ? !cTitleSeo.equals(that.cTitleSeo) : that.cTitleSeo != null) return false;
        if (cDescriptionSeo != null ? !cDescriptionSeo.equals(that.cDescriptionSeo) : that.cDescriptionSeo != null)
            return false;
        if (cKeywordSeo != null ? !cKeywordSeo.equals(that.cKeywordSeo) : that.cKeywordSeo != null) return false;
        if (createdAt != null ? !createdAt.equals(that.createdAt) : that.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(that.updatedAt) : that.updatedAt != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (cName != null ? cName.hashCode() : 0);
        result = 31 * result + (cSlug != null ? cSlug.hashCode() : 0);
        result = 31 * result + (cIcon != null ? cIcon.hashCode() : 0);
        result = 31 * result + (cAvatar != null ? cAvatar.hashCode() : 0);
        result = 31 * result + (int) cActive;
        result = 31 * result + cTotalProduct;
        result = 31 * result + (cTitleSeo != null ? cTitleSeo.hashCode() : 0);
        result = 31 * result + (cDescriptionSeo != null ? cDescriptionSeo.hashCode() : 0);
        result = 31 * result + (cKeywordSeo != null ? cKeywordSeo.hashCode() : 0);
        result = 31 * result + (int) cHome;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        return result;
    }
}
