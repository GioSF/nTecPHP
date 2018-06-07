<?php

include_once("ICOnnectInfo.php");

class UniversalConnect implements IConnectInfo{
    
    private static $servidor = IConnectInfo::HOST; 
    private static $BD = IConnectInfo::BD;
    private static $login = IConnectInfo::LOGIN;
    private static $senha = IConnectInfo::SENHA;
    private static $conecta; 
    
    public function MySQLConectar(){
        self::$conecta = mysqli_connect(
                self::$servidor,
                self::$login,
                self::$senha,
                self::$BD
                );
        if(self::$conecta){
            echo "Conexão bem sucedida.";
        }
        elseif (mysqli_connect_error(self::conecta)){
            echo ("Não ofi possível conectar" . mysqli_connect_error());
        }
        
        return self::conecta;
    }
    
}

?>
