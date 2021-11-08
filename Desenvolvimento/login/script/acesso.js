$(function(){
    $("button#btnEntrar").on("click", function(e){
        e.preventDefault();

        var classe = $("div#formulario").attr("class");

        if(classe == "esqueci"){
            var campoEmail = $("form#formularioLogin #email").val();

            if(campoEmail.trim() == ""){
                $("div#mensagem").show().removeClass("red").html("Preencha o seu email.");
            }else{
                $.ajax({
                    url: "acoes/acesso.php",
                    type: "POST",
                    data: {
                        type: "esqueci",
                        email: campoEmail
                    },

                    success: function(retorno){
                        retorno = JSON.parse(retorno);

                        if(retorno["erro"] == 1){
                            $("div#mensagem").show().addClass("red").html(retorno["mensagem"]);
                        }else if(retorno["erro"] == 2){
                            $("div#mensagem").show().removeClass("red").html(retorno["mensagem"]);
                        }
                    },

                    error: function(){
                        $("div#mensagem").show().addClass("red").html("Ocorreu um erro durante a solicitação");
                    }
                });
            }
        }else{
            var campoEmail = $("form#formularioLogin #email").val();
            var campoSenha = $("form#formularioLogin #senha").val();

            if(campoEmail.trim() == "" || campoSenha.trim() == ""){
                $("div#mensagem").show().removeClass("red").html("Preencha todos os campos.");
            }else{
                $.ajax({
                    url: "acoes/acesso.php",
                    type: "POST",
                    data: {
                        type: "login",
                        email: campoEmail,
                        senha: campoSenha
                    },

                    success: function(retorno){
                        retorno = JSON.parse(retorno);

                        if(retorno["erro"] == 1){
                            $("div#mensagem").show().addClass("red").html(retorno["mensagem"]);
                        }else if(retorno["erro"] == 2){
                            $("div#mensagem").show().removeClass("red").html(retorno["mensagem"]);
                        }else{
                            window.location = "dashboard.php";
                        }
                    },

                    error: function(){
                        $("div#mensagem").show().addClass("red").html("Ocorreu um erro durante a solicitação");
                    }
                });
            }
        }
    });

    $("button#btnCadastrar").on("click", function(e){
        e.preventDefault();

        var campoEmail = $("form#formularioCadastro #emailCadastro").val();
        var campoSenha = $("form#formularioCadastro #senhaCadastro").val();
        var campoNome = $("form#formularioCadastro #nomeCadastro").val();

        if(campoEmail.trim() == "" || campoSenha.trim() == "" || campoNome.trim() == ""){
            $("div#mensagem").show().removeClass("red").html("Preencha todos os campos.");
        }else{
            $.ajax({
                url: "acoes/acesso.php",
                type: "POST",
                data: {
                    type: "cadastro",
                    email: campoEmail,
                    senha: campoSenha,
                    nome: campoNome
                },

                success: function(retorno){
                    retorno = JSON.parse(retorno);

                    if(retorno["erro"] == 1){
                        $("div#mensagem").show().addClass("red").html(retorno["mensagem"]);
                    }else if(retorno["erro"] == 2){
                        $("div#mensagem").show().removeClass("red").html("Enviamos um email de confirmação para "+campoEmail+"");
                    }
                },

                error: function(){
                    $("div#mensagem").show().addClass("red").html("Ocorreu um erro durante a solicitação");
                }
            });
        }
    });

    $("a#esqueciSenha").on("click", function(){
        $("div#formulario").addClass("esqueci");

        $("form#formularioLogin span.title").html("Digite o seu email");
        $("button#btnEntrar").html("Enviar");
        $("div#formulario div#linha.senha").hide();
        $(this).hide();
    });

    $("button.change").on("click", function(){
        $("div#formulario").toggleClass("cadastro");

        $("form#formularioCadastro").toggle();
        $("form#formularioLogin").toggle();
        
        $("div#textoLogin").toggle();
        $("div#textoCadastro").toggle();
    });
});