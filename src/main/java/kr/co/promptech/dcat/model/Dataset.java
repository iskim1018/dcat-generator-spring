package kr.co.promptech.dcat.model;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name="datasets")
public class Dataset {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="user_id", referencedColumnName="id")
    private User user;

    private String title;

    @Column(columnDefinition = "TEXT")
    private String desc;

    @OneToMany
    @JoinColumn(name="dataset_id")
    private Set<FileData> fileData;

    @OneToMany
    @JoinColumn(name="dataset_id")
    private Set<DatasetKeyword> keywords;

    boolean used;

    private String license;

    private Date createdAt;
    private Date updatedAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Set<FileData> getFileData() {
        return fileData;
    }

    public void setFileData(Set<FileData> fileData) {
        this.fileData = fileData;
    }

    public Set<DatasetKeyword> getKeywords() {
        return keywords;
    }

    public void setKeywords(Set<DatasetKeyword> keywords) {
        this.keywords = keywords;
    }

    public boolean isUsed() {
        return used;
    }

    public void setUsed(boolean used) {
        this.used = used;
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
}
