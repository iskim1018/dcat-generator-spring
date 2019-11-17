package kr.co.promptech.dcat.repository;

import kr.co.promptech.dcat.model.Platform;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlatformRepository extends JpaRepository<Platform, Long> {
    Platform findByApiKey(String apiKey);
}
