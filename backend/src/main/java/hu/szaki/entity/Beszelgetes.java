package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "beszelgetes")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Beszelgetes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user1_id", nullable = false)
    private User user1;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user2_id", nullable = false)
    private User user2;

    @Column(nullable = false)
    @Builder.Default
    private LocalDateTime letrehozva = LocalDateTime.now();
}
