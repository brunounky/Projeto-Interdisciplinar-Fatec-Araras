<?php
    require("conexao.php");

    $conexaoClasse = new Conexao();
    $conexao = $conexaoClasse->conectar();

    if(isset($_GET["t"])){
        $query = $conexao->prepare("SELECT confirmado FROM usuarios WHERE token = ?");
        $query->execute(array($_GET["t"]));

        if($query->rowCount() == 1){
            $confirmado = $query->fetchAll(PDO::FETCH_ASSOC)[0]["confirmado"];

            if(!$confirmado){
                $geraToken = function() use(&$geraToken, $conexao){
                    $length = 16;
                    $a = str_split("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
                    $b = array();
    
                    for($i = 0; $i < $length; $i++){
                        $r = rand(0, (sizeof($a) - 1));
                        $b[$i] = $a[$r];
                    }
    
                    $token = join("", $b);
                    
                    $query = $conexao->prepare("SELECT token FROM usuarios WHERE token = ?");
                    $query->execute(array($token));
    
                    if($query->rowCount() > 0){
                        return $geraToken();
                    }else{
                        return $token;
                    }
                };

                $newToken = $geraToken();

                try{
                    $query2 = $conexao->prepare("UPDATE usuarios SET confirmado = ?, token = ? WHERE token = ?");
                    $query2->execute(array(1, $newToken, $_GET["t"]));

                    echo "Sua conta foi confirmada";
                }catch(PDOException $erro){
                    echo "Erro";
                }
            }else{
                echo "Sua conta ja foi confirmada";
            }
        }else{
            echo "Token não encontrado";
        }
    }
?>