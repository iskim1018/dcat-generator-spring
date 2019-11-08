package kr.co.promptech.dcat.repository;

import kr.co.promptech.dcat.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}
