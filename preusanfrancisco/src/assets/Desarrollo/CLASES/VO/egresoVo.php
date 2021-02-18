<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



CLASS egresoVo {
    private $id_egreso     ;
    private $nombre        ;
    private $valor         ;
    private $fecha         ;
    private $fechaCre      ;
    private $usuario       ;
    private $perido        ;
    private $dia           ;
    private $frecuencia    ;
    private $identificacion;
    
    function getId_egreso() {
        return $this->id_egreso;
    }

    function getNombre() {
        return $this->nombre;
    }

    function getValor() {
        return $this->valor;
    }

    function getFecha() {
        return $this->fecha;
    }

    function getFechaCre() {
        return $this->fechaCre;
    }

    function getUsuario() {
        return $this->usuario;
    }

    function getPerido() {
        return $this->perido;
    }

    function getDia() {
        return $this->dia;
    }

    function getFrecuencia() {
        return $this->frecuencia;
    }

    function getIdentificacion() {
        return $this->identificacion;
    }

    function setId_egreso($id_egreso) {
        $this->id_egreso = $id_egreso;
    }

    function setNombre($nombre) {
        $this->nombre = $nombre;
    }

    function setValor($valor) {
        $this->valor = $valor;
    }

    function setFecha($fecha) {
        $this->fecha = $fecha;
    }

    function setFechaCre($fechaCre) {
        $this->fechaCre = $fechaCre;
    }

    function setUsuario($usuario) {
        $this->usuario = $usuario;
    }

    function setPerido($perido) {
        $this->perido = $perido;
    }

    function setDia($dia) {
        $this->dia = $dia;
    }

    function setFrecuencia($frecuencia) {
        $this->frecuencia = $frecuencia;
    }

    function setIdentificacion($identificacion) {
        $this->identificacion = $identificacion;
    }


}