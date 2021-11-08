<?php
    require("conexao.php");

    $conexaoClasse = new Conexao();
    $conexao = $conexaoClasse->conectar();

    if(isset($_GET["t"]) && isset($_POST["senha"])){
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
            $query = $conexao->prepare("UPDATE usuarios SET senha = ?, token = ? WHERE token = ?");
            $query->execute(array(md5($_POST["senha"]), $newToken, $_GET["t"]));

            echo "Sua senha foi atualizada";
        }catch(PDOException $erro){
            echo "Erro";
        }
    }
?>

<form action="#" method="post">
    <input type="password" name="senha" />
    <input type="submit" value="enviar" />
</form>