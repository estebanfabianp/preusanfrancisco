<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

CLASS materiaVo {

    private $id_materia;
    private $id_nota;
    private $notaFinal;
    private $habilitacion;
    private $nombreMateria;
    private $identificacion;

    function getId_materia() {
        return $this->id_materia;
    }

    function getId_nota() {
        return $this->id_nota;
    }

    function getNotaFinal() {
        return $this->notaFinal;
    }

    function getHabilitacion() {
        return $this->habilitacion;
    }

    function getNombreMateria() {
        return $this->nombreMateria;
    }

    function getIdentificacion() {
        return $this->identificacion;
    }

    function setId_materia($id_materia) {
        $this->id_materia = $id_materia;
    }

    function setId_nota($id_nota) {
        $this->id_nota = $id_nota;
    }

    function setNotaFinal($notaFinal) {
        $this->notaFinal = $notaFinal;
    }

    function setHabilitacion($habilitacion) {
        $this->habilitacion = $habilitacion;
    }

    function setNombreMateria($nombreMateria) {
        $this->nombreMateria = $nombreMateria;
    }

    function setIdentificacion($identificacion) {
        $this->identificacion = $identificacion;
    }

}
