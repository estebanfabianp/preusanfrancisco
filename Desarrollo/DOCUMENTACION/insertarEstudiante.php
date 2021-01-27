<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



  

/**
 * Long Desc 
 * */
/**
 * Cotrolador del acceso que lleva es encargado llevar los datos para
 *el registro del los usuario.
 *
 * 
 * @package Controlador
 * @category Educativo
 * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com>
 * @link https://github.com/estebanfabian/bibliotecaClienteServidor.git 
 * @version Revision: 1.0 
 * @access publico
 * * */
header('Access-Control-Allow-Origin: *');
require '../../CLASES/BD/MySql.php';
require '../../CLASES/BD/datosbd.php';
require '../../CLASES/DAO/UsuarioDAO.php';
require '../../CLASES/VO/UsuarioVO.php';

$json= file_get_contents("php://input");
$local= json_decode($json);
$UsuarioDAO=new UsuarioDAO();
$UsuarioDAO->CrearUsuario($local);