package hu.szaki.repository;

import hu.szaki.entity.Munka;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface MunkaRepository extends JpaRepository<Munka, Long>,
        JpaSpecificationExecutor<Munka> {
}
