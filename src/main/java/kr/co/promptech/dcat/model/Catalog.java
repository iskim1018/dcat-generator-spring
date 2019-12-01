package kr.co.promptech.dcat.model;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name="catalogs")
public class Catalog {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    @Column(columnDefinition = "TEXT")
    private String desc;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="platform_id", referencedColumnName="id")
    private Platform platform;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name="catalog_id", referencedColumnName="id")
    private Set<Dataset> datasets;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name="catalog_id", referencedColumnName="id")
    private Set<ApiDatum> apiData;

    private Date createdAt;
    private Date updatedAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Platform getPlatform() {
        return platform;
    }

    public void setPlatform(Platform pltform) {
        this.platform = platform;
    }

    public Set<Dataset> getDatasets() {
        return datasets;
    }

    public void setDatasets(Set<Dataset> datasets) {
        this.datasets = datasets;
    }

    public Set<ApiDatum> getApiData() {
        return apiData;
    }

    public void setApiData(Set<ApiDatum> apiData) {
        this.apiData = apiData;
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
