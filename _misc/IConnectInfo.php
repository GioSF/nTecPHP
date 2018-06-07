<?php

interface IConnectInfo{
    
    const HOST = "localhost";
    const LOGIN = "root";
    const SENHA = "";
    const BD = "sistemaNoticias";
    
    public function MySQLConectar();
    
}

?>
