package kr.co.promptech.dcat.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="platforms")
public class Platform {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String name;
    private String email;
    private String phone;
    private String apiUrl;
    private String apiKey;
    private Date lastFetched;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return "mailto:" + email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return "tel:" + phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getApiUrl() {
        return apiUrl;
    }

    public void setApiUrl(String apiUrl) {
        this.apiUrl = apiUrl;
    }

    public String getApiKey() {
        return apiKey;
    }

    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public Date getLastFetched() {
        return lastFetched;
    }

    public void setLastFetched(Date lastFetched) {
        this.lastFetched = lastFetched;
    }
}
