<?php

include_once 'clases/phpmailer/class.smtp.php';
include_once 'clases/phpmailer/class.phpmailer.php';


    $html = '<h1>test</h1>';

    $mail = new PHPMailer();
    $mail->From = "contacto@cyftodoterreno.com";

    $mail->IsSMTP();
    $mail->Host = "localhost";
    $mail->SMTPSecure = 'tls';
    $mail->SMTPAuth = true;
    $mail->Port = 587;
    $mail->Username = "contacto@cyftodoterreno.com";
    $mail->Password = "Ingreso.12?";
    $mail->debug = 3;

    $mail->Subject = 'test';
    $mail->AddAddress("luchopintado@gmail.com");
    $mail->Body = $html;
    $mail->IsHTML(true);
    $mail->SetLanguage("es", 'clases/phpmailer/');
    $envio = $mail->Send();

