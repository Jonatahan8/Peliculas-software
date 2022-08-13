package com.example.cinetrailer.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "genero")
public class Genero {
    @Id
    @Column(name = "idgenero")
    private Integer id;
    private String titulo;
}
