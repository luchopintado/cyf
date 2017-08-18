<?php

include_once 'clases/phpmailer/class.phpmailer.php';

$action = $_POST["option"];

switch ($action){
    case "contactar":
        contactar();break;
    default:
        exit;
}

function contactar(){
    $email_from = 'cyf_contact_form@cyftodoterreno.com';
    $email_to1 = 'rafaelferia@cyftodoterreno.com';
    $email_to2 = 'ccalambrogio@cyftodoterreno.com';
    // $email_to2 = 'ccalambrogio@gmail.com';

    foreach($_POST as $k=>$v){
        $_POST[$k] = filter_var($v, FILTER_SANITIZE_STRING);
    }
    $nombres = utf8_decode($_POST["nombres"]);
    $email = utf8_decode($_POST["email"]);
    $telefono = utf8_decode($_POST["telefono"]);
    $asunto = 'Formulario CYF: ' . utf8_decode($_POST["asunto"]);
    $mensaje = utf8_decode($_POST["comentario"]);

    $ipaddress = $_SERVER['REMOTE_ADDR'];
    $date = date('d/m/Y');
    $time = date('H:i:s');

    $html = '
    <table cellpadding="1" cellspacing="0" border="1" width="500">
        <colgroup>
            <col width="150"/>
            <col width="350"/>
        </colgroup>
        <tbody>
            <tr>
                <th>Nombres:</th>
                <td>%s</td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>%s</td>
            </tr>
            <tr>
                <th>Teléfono:</th>
                <td>%s</td>
            </tr>
            <tr>
                <th>Asunto:</th>
                <td>%s</td>
            </tr>
            <tr>
                <th>Mensaje:</th>
                <td>%s</td>
            </tr>
            <tr>
                <td colspan="2"><small>Mensaje enviado desde la IP: %s con fecha:%s %s</small></td>
            </tr>
        </tbody>
    </table>';
    $html = sprintf($html, $nombres, $email, $telefono, $asunto, $mensaje, $ipaddress, $date, $time);

    $mail = new PHPMailer();
    $mail->Host = "64.64.14.79";
    $mail->From = $email_from;
    $mail->FromName = $nombres;
    $mail->Subject = $asunto;
    $mail->AddAddress($email_to1);
    $mail->AddAddress($email_to2);
    $mail->AddBCC("creativosdelnorte@gmail.com");
    $mail->AddBCC("luchopintado@gmail.com");
    $mail->AddReplyTo($email, $nombres);
    $mail->Body = $html;
    $mail->IsHTML(true);
    $mail->debug = true;
    $mail->SetLanguage("es", 'clases/phpmailer/');
    $envio = $mail->Send();

    if(function_exists("json_encode")){
        $error = $envio ? "Sin errores" : $mail->ErrorInfo;
        echo json_encode(array("success"=>$envio, "html"=>$html, "error"=>$error));
    }else{
        echo '{"success":'.$envio.'}';
    }
}
