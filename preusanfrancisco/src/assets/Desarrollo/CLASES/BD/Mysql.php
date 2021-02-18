<?php

/**
 * Long Desc 
 * */

/**
 * Esta clase permite realizar la conexión con la base de datos a través de su método conectar 
 * proporcionado que se pueda realizar query de consulta , insertar , actualizar y eliminar por la ejecución
 * del método execute_query.
 *
 * 
 * @package BD
 * @category Educativo
 * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com>
 * @link https://github.com/estebanfabian/bibliotecaClienteServidor.git 
 * @version Revision: 1.0 
 * @access publico
 * * */
class ConectarBD {

    /**
     * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com>
     * @since Revision: 1.0 
     * @var string[] Variable que almacena los datos de acceso para la conexión
     * * */
    private $mysqli;

    /**
     * Contrutor de la clase ConectarBD que utiliza el método conectar para establecer
     * una conexión 
     * @since Revision: 1.0 
     * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com>
     * * */
    function __construct() {
        $this->conectar();
    }

    /**
     * Método que establece la conexión con la base de datos por medio de las credenciales de acceso
     * retornado si el acceso fue exitoso o no 
     * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com> 
     * @since Revision: 1.0 
     * @return string retorna si el acceso fue exitoso o no
     */
    private function conectar() {
        $dato_conn = new Datos();
        $this->mysqli = new mysqli($dato_conn->get_hostname(), $dato_conn->get_usuario(), $dato_conn->get_clave(), $dato_conn->get_DB());
        if ($this->mysqli->connect_errno) {
            return "Falló la conexión a MySQL: (" . $this->mysqli->connect_errno . ") " . $this->mysqli->connect_error;
            // exit();
        } else {
            $this->mysqli->query("SET NAMES 'utf8'");
            return "OK";
        }
    }

    /**
     * Método encargado de realizar la ejecición de la query(consulta , insertar , actualizar y eliminar) y 
     * retornando un array de datos resultado de la consulta en caso de ser exitosa 
     * que reraliza una consulta de tipo select
     * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com>
     * @since Revision: 1.0 
     * @param string $SQL_Select
     * @return array() Resultado de la consulta 
     */
    public function query($SQL_Select) {
        $data = array();
        if (!$resultado = $this->mysqli->query($SQL_Select)) {
            return -1;
        }
        $incremento = 0;
        while ($fila = $resultado->fetch_assoc()) {
            $data[$incremento] = $fila;
            $incremento++;
        }
        if ($incremento != 0) {
            $resultado->free();
            $this->mysqli->close();
            return $data;
        } else {
            $resultado->free();
            $this->mysqli->close();
            return 0;
        }
    }

    /**
     * Ejecutar la query recibida y retornar el 
     * el cual realizara el retorno de los datos obtenidos anterioirmente.
     * @since Revision: 1.0 
     * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com>
     * @param string $sql Orden sql para la ejecución
     * @return array() Resultado de la consulta
     * * */
    public function execute_query($sql) {
        $dato = $this->mysqli->query($sql);
        $this->mysqli->close();
        return $dato;
    }

    /**
     * Metodo que retona el driver de coneccón la BD MYSQL
     * @author Esteban fabian patiño montealegre <estebanfabianp@gmail.com> 
     * @since Revision: 1.0 
     * @return self retorna el conector
     */
    function getMysqli() {
        return $this->mysqli;
    }

}
