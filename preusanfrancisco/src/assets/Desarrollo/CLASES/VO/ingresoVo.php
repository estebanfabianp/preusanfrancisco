<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

CLASS ingresoVo {

    private $id_ingreso;
    private $cedula;
    private $tipoIngreso;

    function getId_ingreso() {
        return $this->id_ingreso;
    }

    function getCedula() {
        return $this->cedula;
    }

    function getTipoIngreso() {
        return $this->tipoIngreso;
    }

    function setId_ingreso($id_ingreso) {
        $this->id_ingreso = $id_ingreso;
    }

    function setCedula($cedula) {
        $this->cedula = $cedula;
    }

    function setTipoIngreso($tipoIngreso) {
        $this->tipoIngreso = $tipoIngreso;
    }

}
