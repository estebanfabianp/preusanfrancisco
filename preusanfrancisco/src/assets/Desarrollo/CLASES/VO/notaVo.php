<?php

CLASS notaVo {

    private $id_nota;
    private $nota;
    private $valor;

    function getId_nota() {
        return $this->id_nota;
    }

    function getNota() {
        return $this->nota;
    }

    function getValor() {
        return $this->valor;
    }

    function setId_nota($id_nota) {
        $this->id_nota = $id_nota;
    }

    function setNota($nota) {
        $this->nota = $nota;
    }

    function setValor($valor) {
        $this->valor = $valor;
    }

}
