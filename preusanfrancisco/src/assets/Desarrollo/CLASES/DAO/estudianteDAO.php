<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require ( "../../PHPMailer-master/src/PHPMailer.php" );
require ( "../../PHPMailer-master/src/SMTP.php" );
require ( "../../PHPMailer-master/src/Exception.php" );

CLASS estudianteDAO {

    function validadionEStudiante($array) {

        $estudianteVo = new estudianteVo();
        $estudianteVo->setCedula($array->cedula);

        $sql = 'select * from tbl_estudiante where  cedula = ?';

        $BD = new ConectarBD();
        $conn = $BD->getMysqli();
        $stmp = $conn->prepare($sql);

        $cedula = $estudianteVo->getCedula();
        $stmp->bind_param("i", $cedula);
        $respuesta = array();
        if ($stmp->execute() == 1) {
            $stmp->bind_result($cedula);
            while ($stmp->fetch()) {
                $respuesta = $cedula;
            }

            if ($cedula != "") {
                $respuesta = "ok";
            } else {
                $respuesta = "no";
            }
        } else {
            $respuesta = "no";
        }
        $stmp->close();
        $conn->close();
        return ($respuesta);
    }

}
