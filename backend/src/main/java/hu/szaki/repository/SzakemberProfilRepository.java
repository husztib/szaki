package hu.szaki.repository;

import hu.szaki.entity.SzakemberProfil;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import java.util.Optional;

public interface SzakemberProfilRepository extends JpaRepository<SzakemberProfil, Long>,
        JpaSpecificationExecutor<SzakemberProfil> {
    Optional<SzakemberProfil> findByUserId(Long userId);
}
