<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



CLASS PersonalVo {
    private $identificacion    ;
    private $nombre            ;
    private $apellido          ;
    private $telefono          ;
    private $celular           ;
    private $tipoIdentificacion;
    private $Id_cargo          ;
   
    function getIdentificacion() {
        return $this->identificacion;
    }

    function getNombre() {
        return $this->nombre;
    }

    function getApellido() {
        return $this->apellido;
    }

    function getTelefono() {
        return $this->telefono;
    }

    function getCelular() {
        return $this->celular;
    }

    function getTipoIdentificacion() {
        return $this->tipoIdentificacion;
    }

    function getId_cargo() {
        return $this->Id_cargo;
    }

    function setIdentificacion($identificacion) {
        $this->identificacion = $identificacion;
    }

    function setNombre($nombre) {
        $this->nombre = $nombre;
    }

    function setApellido($apellido) {
        $this->apellido = $apellido;
    }

    function setTelefono($telefono) {
        $this->telefono = $telefono;
    }

    function setCelular($celular) {
        $this->celular = $celular;
    }

    function setTipoIdentificacion($tipoIdentificacion) {
        $this->tipoIdentificacion = $tipoIdentificacion;
    }

    function setId_cargo($Id_cargo) {
        $this->Id_cargo = $Id_cargo;
    }


}

