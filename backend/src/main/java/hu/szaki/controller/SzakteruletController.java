package hu.szaki.controller;

import hu.szaki.entity.Szakterulet;
import hu.szaki.repository.SzakteruletRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/szakteruletek")
@RequiredArgsConstructor
public class SzakteruletController {

    private final SzakteruletRepository szakteruletRepository;

    @GetMapping
    public List<Szakterulet> list() {
        return szakteruletRepository.findAll();
    }
}
