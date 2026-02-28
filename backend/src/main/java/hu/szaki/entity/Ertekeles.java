package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "ertekeles")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Ertekeles {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ertekelo_id", nullable = false)
    private User ertekelo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ertekelt_id", nullable = false)
    private User ertekelt;

    @Column(nullable = false)
    private int pontszam;

    private String szoveg;

    @Column(nullable = false)
    @Builder.Default
    private LocalDateTime letrehozva = LocalDateTime.now();
}
