<?php 

require_once("verifica_sessao.php");
require_once("conexao.php");

if (isset($_POST["submit"])) 
{
   if (valida_form_login())
   {
       $nome_usuario = $_POST["usuario"];
       $senha = $_POST["senha"];

       $res = verifica_login($nome_usuario, $senha);

       if ($res["verifica_qtde_linhas"]) 
       {
            while ($usuario = mysqli_fetch_assoc($res["query"])) 
            {
                $_SESSION["usuario_logado"] = $usuario["nome_usuario"];
                // é nome_usuario e não usuario
            }

            header("Location: menu.php");
       }
       else 
       {
            ?>
            <script>
                window.location.href = "index.php";
                alert("Usuário não encontrado!");
            </script>
            <?php
       }
   }
   else 
   {        
       ?>
        <script>
            window.location.href = "index.php";
            alert("Você precisa preencher os dados");
        </script>
       <?php
   }
}

function valida_form_login()
{
    if (($_POST["usuario"] == "")  || ($_POST["senha"] == ""))
    {
       return false;
    }
    else 
    {
        return true;
    }
}

function verifica_login($nome_usuario, $senha)
{
    $conn = $_SESSION["conexao"];

    $senha = hash("sha256", $senha);

    $sql = "SELECT * FROM usuario WHERE nome_usuario = '{$nome_usuario}'
    AND senha = '{$senha}'";

    $query = mysqli_query($conn, $sql);

    $verifica_qtde_linhas = mysqli_num_rows($query) > 0 ? true : false;

    $response["query"] = $query;
    $response["verifica_qtde_linhas"] = $verifica_qtde_linhas;
    
    return $response;
}