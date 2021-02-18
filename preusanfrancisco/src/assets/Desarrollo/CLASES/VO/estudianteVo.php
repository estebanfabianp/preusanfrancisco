<?php

CLASS estudianteVo {

    private $id_estudiante;
    private $tipoDocumento;
    private $cedula;
    private $nombre;
    private $apellido;
    private $telefono;
    private $Celular;
    private $fechaNacimiento;
    private $expedicion;
    private $fotoCarnet;
    private $Estrato;
    private $ocupacion;
    private $otroTelefono;
    private $correo;
    private $ultimoCurso;
    private $telefonoAcudiente;
    private $alloAprobado;
    private $observacion;
    private $id_colegio;
    private $id_barrio;
    private $clave;
    function getId_estudiante() {
        return $this->id_estudiante;
    }

    function getTipoDocumento() {
        return $this->tipoDocumento;
    }

    function getCedula() {
        return $this->cedula;
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
        return $this->Celular;
    }

    function getFechaNacimiento() {
        return $this->fechaNacimiento;
    }

    function getExpedicion() {
        return $this->expedicion;
    }

    function getFotoCarnet() {
        return $this->fotoCarnet;
    }

    function getEstrato() {
        return $this->Estrato;
    }

    function getOcupacion() {
        return $this->ocupacion;
    }

    function getOtroTelefono() {
        return $this->otroTelefono;
    }

    function getCorreo() {
        return $this->correo;
    }

    function getUltimoCurso() {
        return $this->ultimoCurso;
    }

    function getTelefonoAcudiente() {
        return $this->telefonoAcudiente;
    }

    function getAlloAprobado() {
        return $this->alloAprobado;
    }

    function getObservacion() {
        return $this->observacion;
    }

    function getId_colegio() {
        return $this->id_colegio;
    }

    function getId_barrio() {
        return $this->id_barrio;
    }

    function getClave() {
        return $this->clave;
    }

    function setId_estudiante($id_estudiante) {
        $this->id_estudiante = $id_estudiante;
    }

    function setTipoDocumento($tipoDocumento) {
        $this->tipoDocumento = $tipoDocumento;
    }

    function setCedula($cedula) {
        $this->cedula = $cedula;
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

    function setCelular($Celular) {
        $this->Celular = $Celular;
    }

    function setFechaNacimiento($fechaNacimiento) {
        $this->fechaNacimiento = $fechaNacimiento;
    }

    function setExpedicion($expedicion) {
        $this->expedicion = $expedicion;
    }

    function setFotoCarnet($fotoCarnet) {
        $this->fotoCarnet = $fotoCarnet;
    }

    function setEstrato($Estrato) {
        $this->Estrato = $Estrato;
    }

    function setOcupacion($ocupacion) {
        $this->ocupacion = $ocupacion;
    }

    function setOtroTelefono($otroTelefono) {
        $this->otroTelefono = $otroTelefono;
    }

    function setCorreo($correo) {
        $this->correo = $correo;
    }

    function setUltimoCurso($ultimoCurso) {
        $this->ultimoCurso = $ultimoCurso;
    }

    function setTelefonoAcudiente($telefonoAcudiente) {
        $this->telefonoAcudiente = $telefonoAcudiente;
    }

    function setAlloAprobado($alloAprobado) {
        $this->alloAprobado = $alloAprobado;
    }

    function setObservacion($observacion) {
        $this->observacion = $observacion;
    }

    function setId_colegio($id_colegio) {
        $this->id_colegio = $id_colegio;
    }

    function setId_barrio($id_barrio) {
        $this->id_barrio = $id_barrio;
    }

    function setClave($clave) {
        $this->clave = $clave;
    }

}
