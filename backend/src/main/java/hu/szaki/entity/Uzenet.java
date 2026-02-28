package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "uzenet")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Uzenet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "beszelgetes_id", nullable = false)
    private Beszelgetes beszelgetes;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "kuldo_id", nullable = false)
    private User kuldo;

    @Column(nullable = false)
    private String tartalom;

    @Column(nullable = false)
    @Builder.Default
    private boolean olvasva = false;

    @Column(nullable = false)
    @Builder.Default
    private LocalDateTime kuldve = LocalDateTime.now();
}
