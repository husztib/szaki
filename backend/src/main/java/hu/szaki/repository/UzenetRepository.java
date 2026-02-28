package hu.szaki.repository;

import hu.szaki.entity.Uzenet;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface UzenetRepository extends JpaRepository<Uzenet, Long> {
    List<Uzenet> findByBeszelgetesIdOrderByKuldveAsc(Long beszelgetesId);
}
