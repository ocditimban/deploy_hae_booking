<?php
//ini_set("SMTP", "localhost");
ini_set("SMTP", "aspmx.l.google.com");
ini_set("smtp_port", "25");
ini_set("sendmail_from", "ghetrung123@gmail.com");

mail("ghetrung1@gmail.com", "subject112", "message22", "From: Sender");
echo "hello phuongbui";
//
//
//add_action('phpmailer_init', 'setup');
//function setup(PHPMailer $phpmailer)
//{
//    $phpmailer->Host = 'mailhog';
//    $phpmailer->Port = 1025;
//    $phpmailer->IsSMTP();
//}