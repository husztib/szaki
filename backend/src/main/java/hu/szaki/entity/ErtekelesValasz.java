package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "ertekeles_valasz")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ErtekelesValasz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ertekeles_id", nullable = false, unique = true)
    private Ertekeles ertekeles;

    @Column(nullable = false)
    private String szoveg;

    @Column(nullable = false)
    @Builder.Default
    private LocalDateTime letrehozva = LocalDateTime.now();
}
