package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "munka")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Munka {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "megrendelo_id", nullable = false)
    private User megrendelo;

    @Column(nullable = false)
    private String cim;

    @Column(nullable = false)
    private String leiras;

    private String varos;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    @Builder.Default
    private Statusz statusz = Statusz.NYITOTT;

    private LocalDate hatarido;

    @Column(nullable = false)
    @Builder.Default
    private LocalDateTime letrehozva = LocalDateTime.now();

    @ManyToMany
    @JoinTable(
            name = "munka_szakterulet",
            joinColumns = @JoinColumn(name = "munka_id"),
            inverseJoinColumns = @JoinColumn(name = "szakterulet_id")
    )
    @Builder.Default
    private Set<Szakterulet> szakteruletek = new HashSet<>();

    public enum Statusz {
        NYITOTT, FOLYAMATBAN, LEZART
    }
}
