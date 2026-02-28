package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "szakember_profil")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SzakemberProfil {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false, unique = true)
    private User user;

    private String bemutatkozas;

    @Column(name = "tapasztalat_ev")
    private Integer tapasztalatEv;

    @Column(name = "min_ar")
    private Integer minAr;

    @Column(name = "max_ar")
    private Integer maxAr;

    private String munkaterulet;

    @ManyToMany
    @JoinTable(
            name = "szakember_szakterulet",
            joinColumns = @JoinColumn(name = "szakember_profil_id"),
            inverseJoinColumns = @JoinColumn(name = "szakterulet_id")
    )
    @Builder.Default
    private Set<Szakterulet> szakteruletek = new HashSet<>();
}
