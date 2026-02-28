package hu.szaki.repository;

import hu.szaki.entity.ErtekelesValasz;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface ErtekelesValaszRepository extends JpaRepository<ErtekelesValasz, Long> {
    Optional<ErtekelesValasz> findByErtekelesId(Long ertekelesId);
}
