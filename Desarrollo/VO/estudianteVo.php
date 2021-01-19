<?php

CLASS estudianteVo {
   private $cedula              ;
   private $nombre              ;
   private $apellido            ;
   private $telefono            ;
   private $fechaNacimiento     ;
   private $Celular             ;
   private $tipoDocumento       ;
   private $valorMatricula  ;
   private $descuento           ;

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

   function getFechaNacimiento() {
       return $this->fechaNacimiento;
   }

   function getCelular() {
       return $this->Celular;
   }

   function getTipoDocumento() {
       return $this->tipoDocumento;
   }

   function getValorMatricula() {
       return $this->valorMatricula;
   }

   function getDescuento() {
       return $this->descuento;
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

   function setFechaNacimiento($fechaNacimiento) {
       $this->fechaNacimiento = $fechaNacimiento;
   }

   function setCelular($Celular) {
       $this->Celular = $Celular;
   }

   function setTipoDocumento($tipoDocumento) {
       $this->tipoDocumento = $tipoDocumento;
   }

   function setValorMatricula($valorMatricula) {
       $this->valorMatricula = $valorMatricula;
   }

   function setDescuento($descuento) {
       $this->descuento = $descuento;
   }

   
}

