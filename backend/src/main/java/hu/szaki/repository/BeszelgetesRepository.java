package hu.szaki.repository;

import hu.szaki.entity.Beszelgetes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import java.util.Optional;

public interface BeszelgetesRepository extends JpaRepository<Beszelgetes, Long> {

    @Query("SELECT b FROM Beszelgetes b WHERE b.user1.id = :userId OR b.user2.id = :userId ORDER BY b.letrehozva DESC")
    List<Beszelgetes> findByUserId(Long userId);

    @Query("SELECT b FROM Beszelgetes b WHERE (b.user1.id = :user1Id AND b.user2.id = :user2Id) OR (b.user1.id = :user2Id AND b.user2.id = :user1Id)")
    Optional<Beszelgetes> findByUsers(Long user1Id, Long user2Id);
}
