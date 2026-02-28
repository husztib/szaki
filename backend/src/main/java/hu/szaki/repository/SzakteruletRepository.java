package hu.szaki.repository;

import hu.szaki.entity.Szakterulet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SzakteruletRepository extends JpaRepository<Szakterulet, Long> {
}
