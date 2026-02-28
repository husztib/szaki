package hu.szaki.repository;

import hu.szaki.entity.Ertekeles;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ErtekelesRepository extends JpaRepository<Ertekeles, Long> {
    List<Ertekeles> findByErtekeltIdOrderByLetrehozvaDesc(Long ertekeltId);
}
