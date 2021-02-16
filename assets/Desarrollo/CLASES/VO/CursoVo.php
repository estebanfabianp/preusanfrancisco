<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



CLASS CursoVo {
    private $cedula       ;
    private $horario      ;
    private $identificacio;

    function getCedula() {
        return $this->cedula;
    }

    function getHorario() {
        return $this->horario;
    }

    function getIdentificacio() {
        return $this->identificacio;
    }

    function setCedula($cedula) {
        $this->cedula = $cedula;
    }

    function setHorario($horario) {
        $this->horario = $horario;
    }

    function setIdentificacio($identificacio) {
        $this->identificacio = $identificacio;
    }


}
