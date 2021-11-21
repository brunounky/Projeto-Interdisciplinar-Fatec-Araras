    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--===============================================================================================-->
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--===============================================================================================-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
        <!--===============================================================================================-->
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <!--===============================================================================================-->
            <link href="https://fonts.googleapis.com/css2?family=Molengo&display=swap" rel="stylesheet">
        <!--===============================================================================================-->
            <link rel="stylesheet" href="css/slider.css">
        <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="css/util.css">
        <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="css/main.css">

        <title>SoSCardio</title>
    </head>
    <body>

        <!-- INICIO PHP CONEXAO COM O BANCO DE DADOS-->

        <?php

            $pdo=new PDO("mysql:host=localhost;dbname=soscardio","root");

            if(isset($_POST['nome'])){
                $sql = $pdo->prepare("INSERT INTO logininicial VALUES (null,?,?,?)");
                $sql->execute(array($_POST['nome'], $_POST['email'], $_POST['senha']));

                header('Location:cadastro1.php'); //redireciona para a próxima page de cadastro, lembrar que precisamos guardar o boleano voluntario no anco de dados
                // e fazer um if para erros durante o cadastro e dependendo da resposta do boleano voluntario.
        
            }

        ?>

        <!-- FIM DA PARTE DE CONEXAO COM O BANCO DE DADOS
        TENTAR COLOCAR ESSA CONEXAO DENTRO DE UM ARQUIVO PROPRIO E INCLUIR ESSE ARQUIVO NAS DEMAIS PAGINAS QUE IRÃO
        USAR O BANCO DE DADOS -->

        <div class="limiter"> 

            <div class="container-login100">
                <label for="toggle" class="switch">
                    <input type="checkbox" name="checker" id="toggle">
                    <span class="text cad">Cadastrar</span>
                    <span class="text log">Login</span>
                    <span class="slider round"></span>
                </label> 
                <div class="wrap-login100">
                    <form method="post" class="login100-form validate-form">
                        <label for="input-nome" class="lbl-input">
                            <input name="nome" id="input-nome" class="form-input nome" type="text" placeholder="Nome completo" required />
                        </label>
                        
                        <label for="input-email" class="lbl-input">
                            <input name="email" id="input-email" class="form-input email" type="email" placeholder="E-mail" required />
                        </label>
            
                        <label for="input-pwd" class="lbl-input">
                            <input name="senha" id="input-pwd" class="form-input password" type="password" placeholder="Senha" required />
                        </label>
                        
                        <label for="input-pwd-confirm" class="lbl-input">
                            <input id="input-pwd-confirm" class="form-input password-confirm" type="password" placeholder="Confirmar senha" required />
                        </label>
                            <p id="voluntary">Deseja se cadastrar como voluntário?</p>
                            <div class="contact100-form-checkbox">
                                <div class="form-check form-check-inline">
                                    <div>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                </div>
                                <div>
                                    <label class="form-check-label" for="inlineRadio1">Sim</label>
                                </div>
                            </div>
                                <div class="form-check form-check-inline">
                                    <div>

                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                    </div>
                                    <div>
                                        <label class="form-check-label" for="inlineRadio2">Não</label> 
                                    </div>
                                    
                                </div>
                                </div>
                        </div>

                            <div class="container-login100-form-btn m-t-17">
                                
                                <button class="login100-form-btn">
                                   PRÓXIMO
                                </button>
                    </div>
                    </form>

                    <div>
                        <img src="images/intersection.svg" alt="" srcset="" id="img-intersection">
                    </div>

                    <section id="apps">
                        <div class="icons">
                            <img src="images/icons/googlefit.svg" alt="link google" srcset="">
                        </div>

                        <div class="icons">
                            <img src="images/icons/samsunghealth.png" alt="link samsunghealth" srcset="" id="image">
                        </div>

                        <div class="icons">
                            <img src="images/icons/mifit.svg" alt="link google" srcset="">
                        </div>
                    </section>

                </div>
            </div>
        </div>

        <div id="dropDownSelect1"></div>
   <script src="js/main.js"></script>
    </body>
    </html>