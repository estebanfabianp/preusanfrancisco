<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

header('Access-Control-Allow-Origin: *');
require '../../CLASES/BD/MySql.php';
require '../../CLASES/BD/datosbd.php';
require '../../CLASES/DAO/estudianteDAO.php';
require '../../CLASES/VO/estudianteVO.php';

$json = file_get_contents("php://input");
$local = json_decode($json);
$estudianteDAO = new estudianteDAO();
$estudianteDAO->validadionEStudiante($array);