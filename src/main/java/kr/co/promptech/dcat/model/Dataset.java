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

    @OneToOne
    @JoinColumn(name="user_id", referencedColumnName="id")
    private User user;

    private String title;

    @Column(columnDefinition = "TEXT")
    private String desc;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name="dataset_id")
    private Set<FileData> fileData;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name="dataset_id")
    private Set<DatasetKeyword> keywords;

    boolean used;

    private String license;

    private String accessRights;

    private String landingPage;

    private String rights;

    private String accrualPeriodicity;

    @Column(columnDefinition = "LONGTEXT")
    private String spatial;

    private String spatialResolutionInMeters;

    private String temporal;

    private String temporalResolution;

    private String version;

    private String versionDescription;

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

    public String getAccessRights() {
        return accessRights;
    }

    public void setAccessRights(String accessRights) {
        this.accessRights = accessRights;
    }

    public String getLandingPage() {
        return landingPage;
    }

    public void setLandingPage(String landingPage) {
        this.landingPage = landingPage;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getAccrualPeriodicity() {
        return accrualPeriodicity;
    }

    public void setAccrualPeriodicity(String accrualPeriodicity) {
        this.accrualPeriodicity = accrualPeriodicity;
    }

    public String getSpatial() {
        return spatial;
    }

    public void setSpatial(String spatial) {
        this.spatial = spatial;
    }

    public String getSpatialResolutionInMeters() {
        return spatialResolutionInMeters;
    }

    public void setSpatialResolutionInMeters(String spatialResolutionInMeters) {
        this.spatialResolutionInMeters = spatialResolutionInMeters;
    }

    public String getTemporal() {
        return temporal;
    }

    public void setTemporal(String temporal) {
        this.temporal = temporal;
    }

    public String getTemporalResolution() {
        return temporalResolution;
    }

    public void setTemporalResolution(String temporalResolution) {
        this.temporalResolution = temporalResolution;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getVersionDescription() {
        return versionDescription;
    }

    public void setVersionDescription(String versionDescription) {
        this.versionDescription = versionDescription;
    }
}
