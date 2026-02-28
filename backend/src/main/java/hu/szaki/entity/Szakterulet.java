package hu.szaki.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "szakterulet")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Szakterulet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String nev;
}
