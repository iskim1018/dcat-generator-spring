package kr.co.promptech.dcat.repository;

import kr.co.promptech.dcat.model.Catalog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CatalogRepository extends JpaRepository<Catalog, Long> {
    @Query("SELECT DISTINCT c FROM Catalog c " +
            "INNER JOIN FETCH c.platform " +
            "LEFT JOIN FETCH c.datasets d " +
            "INNER JOIN FETCH d.user " +
            "LEFT JOIN FETCH c.apiData ad " +
            "INNER JOIN FETCH ad.user " +
            "LEFT JOIN FETCH d.fileData " +
            "LEFT JOIN FETCH d.keywords")
    List<Catalog> findAll();
}
