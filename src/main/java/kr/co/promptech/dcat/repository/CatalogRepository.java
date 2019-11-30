package kr.co.promptech.dcat.repository;

import kr.co.promptech.dcat.model.Catalog;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CatalogRepository extends JpaRepository<Catalog, Long> {
}
