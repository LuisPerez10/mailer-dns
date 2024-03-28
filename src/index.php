<?php
$dir = __DIR__ . '/vendor/autoload.php';
echo $dir;
require_once $dir;

use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mailer\Transport;
use Symfony\Component\Mime\Email;

// Configurar el transporte SMTP
$MAILER_DSN = 'smtp://2a964c6901a660:234d438549bc39@sandbox.smtp.mailtrap.io:2525';
$transport = Transport::fromDsn($MAILER_DSN);
$mailer = new Mailer($transport);

// Crear el mensaje
$email = (new Email())
    ->from('from@example.com')
    ->to('perezluisinho2105@gmail.com')
    ->subject('¡Hola!')
    ->text('¡Hola mundo!')
    ->html('<p>¡Hola mundo!</p>');

// Enviar el mensaje
$mailer->send($email);

echo "Correo enviado con éxito!";
