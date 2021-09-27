package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "products", schema = "pconlineweb", catalog = "")
public class ProductsEntity {
    private int id;
    private String proName;
    private String proSlug;
    private int proPrice;
    private int proAuthorId;
    private byte proSale;
    private byte proActive;
    private byte proHot;
    private int proView;
    private String proDescription;
    private String proAvatar;
    private String proDescriptionSeo;
    private String proKeywordSeo;
    private String proTitleSeo;
    private String proContent;
    private byte proPay;
    private byte proNumber;
    private int proTotalRating;
    private int proTotalNumber;
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
    @Column(name = "proName")
    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    @Basic
    @Column(name = "proSlug")
    public String getProSlug() {
        return proSlug;
    }

    public void setProSlug(String proSlug) {
        this.proSlug = proSlug;
    }

    @Basic
    @Column(name = "proPrice")
    public int getProPrice() {
        return proPrice;
    }

    public void setProPrice(int proPrice) {
        this.proPrice = proPrice;
    }

    @Basic
    @Column(name = "proAuthorId")
    public int getProAuthorId() {
        return proAuthorId;
    }

    public void setProAuthorId(int proAuthorId) {
        this.proAuthorId = proAuthorId;
    }

    @Basic
    @Column(name = "proSale")
    public byte getProSale() {
        return proSale;
    }

    public void setProSale(byte proSale) {
        this.proSale = proSale;
    }

    @Basic
    @Column(name = "proActive")
    public byte getProActive() {
        return proActive;
    }

    public void setProActive(byte proActive) {
        this.proActive = proActive;
    }

    @Basic
    @Column(name = "proHot")
    public byte getProHot() {
        return proHot;
    }

    public void setProHot(byte proHot) {
        this.proHot = proHot;
    }

    @Basic
    @Column(name = "proView")
    public int getProView() {
        return proView;
    }

    public void setProView(int proView) {
        this.proView = proView;
    }

    @Basic
    @Column(name = "proDescription")
    public String getProDescription() {
        return proDescription;
    }

    public void setProDescription(String proDescription) {
        this.proDescription = proDescription;
    }

    @Basic
    @Column(name = "proAvatar")
    public String getProAvatar() {
        return proAvatar;
    }

    public void setProAvatar(String proAvatar) {
        this.proAvatar = proAvatar;
    }

    @Basic
    @Column(name = "proDescriptionSeo")
    public String getProDescriptionSeo() {
        return proDescriptionSeo;
    }

    public void setProDescriptionSeo(String proDescriptionSeo) {
        this.proDescriptionSeo = proDescriptionSeo;
    }

    @Basic
    @Column(name = "proKeywordSeo")
    public String getProKeywordSeo() {
        return proKeywordSeo;
    }

    public void setProKeywordSeo(String proKeywordSeo) {
        this.proKeywordSeo = proKeywordSeo;
    }

    @Basic
    @Column(name = "proTitleSeo")
    public String getProTitleSeo() {
        return proTitleSeo;
    }

    public void setProTitleSeo(String proTitleSeo) {
        this.proTitleSeo = proTitleSeo;
    }

    @Basic
    @Column(name = "proContent")
    public String getProContent() {
        return proContent;
    }

    public void setProContent(String proContent) {
        this.proContent = proContent;
    }

    @Basic
    @Column(name = "proPay")
    public byte getProPay() {
        return proPay;
    }

    public void setProPay(byte proPay) {
        this.proPay = proPay;
    }

    @Basic
    @Column(name = "proNumber")
    public byte getProNumber() {
        return proNumber;
    }

    public void setProNumber(byte proNumber) {
        this.proNumber = proNumber;
    }

    @Basic
    @Column(name = "proTotalRating")
    public int getProTotalRating() {
        return proTotalRating;
    }

    public void setProTotalRating(int proTotalRating) {
        this.proTotalRating = proTotalRating;
    }

    @Basic
    @Column(name = "proTotalNumber")
    public int getProTotalNumber() {
        return proTotalNumber;
    }

    public void setProTotalNumber(int proTotalNumber) {
        this.proTotalNumber = proTotalNumber;
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

        ProductsEntity that = (ProductsEntity) o;

        if (id != that.id) return false;
        if (proPrice != that.proPrice) return false;
        if (proAuthorId != that.proAuthorId) return false;
        if (proSale != that.proSale) return false;
        if (proActive != that.proActive) return false;
        if (proHot != that.proHot) return false;
        if (proView != that.proView) return false;
        if (proPay != that.proPay) return false;
        if (proNumber != that.proNumber) return false;
        if (proTotalRating != that.proTotalRating) return false;
        if (proTotalNumber != that.proTotalNumber) return false;
        if (proName != null ? !proName.equals(that.proName) : that.proName != null) return false;
        if (proSlug != null ? !proSlug.equals(that.proSlug) : that.proSlug != null) return false;
        if (proDescription != null ? !proDescription.equals(that.proDescription) : that.proDescription != null)
            return false;
        if (proAvatar != null ? !proAvatar.equals(that.proAvatar) : that.proAvatar != null) return false;
        if (proDescriptionSeo != null ? !proDescriptionSeo.equals(that.proDescriptionSeo) : that.proDescriptionSeo != null)
            return false;
        if (proKeywordSeo != null ? !proKeywordSeo.equals(that.proKeywordSeo) : that.proKeywordSeo != null)
            return false;
        if (proTitleSeo != null ? !proTitleSeo.equals(that.proTitleSeo) : that.proTitleSeo != null) return false;
        if (proContent != null ? !proContent.equals(that.proContent) : that.proContent != null) return false;
        if (createdAt != null ? !createdAt.equals(that.createdAt) : that.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(that.updatedAt) : that.updatedAt != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (proName != null ? proName.hashCode() : 0);
        result = 31 * result + (proSlug != null ? proSlug.hashCode() : 0);
        result = 31 * result + proPrice;
        result = 31 * result + proAuthorId;
        result = 31 * result + (int) proSale;
        result = 31 * result + (int) proActive;
        result = 31 * result + (int) proHot;
        result = 31 * result + proView;
        result = 31 * result + (proDescription != null ? proDescription.hashCode() : 0);
        result = 31 * result + (proAvatar != null ? proAvatar.hashCode() : 0);
        result = 31 * result + (proDescriptionSeo != null ? proDescriptionSeo.hashCode() : 0);
        result = 31 * result + (proKeywordSeo != null ? proKeywordSeo.hashCode() : 0);
        result = 31 * result + (proTitleSeo != null ? proTitleSeo.hashCode() : 0);
        result = 31 * result + (proContent != null ? proContent.hashCode() : 0);
        result = 31 * result + (int) proPay;
        result = 31 * result + (int) proNumber;
        result = 31 * result + proTotalRating;
        result = 31 * result + proTotalNumber;
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        return result;
    }
}
