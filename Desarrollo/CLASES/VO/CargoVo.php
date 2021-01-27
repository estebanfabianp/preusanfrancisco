<?php


CLASS CargoVo {
    private $Id_cargo    ;
    private $nombreCargo ;
    private $salario     ;
    function getId_cargo() {
        return $this->Id_cargo;
    }

    function getNombreCargo() {
        return $this->nombreCargo;
    }

    function getSalario() {
        return $this->salario;
    }

    function setId_cargo($Id_cargo) {
        $this->Id_cargo = $Id_cargo;
    }

    function setNombreCargo($nombreCargo) {
        $this->nombreCargo = $nombreCargo;
    }

    function setSalario($salario) {
        $this->salario = $salario;
    }

   
}
