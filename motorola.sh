#!/bin/bash
python3 /var/www/html/cgi/motorola.py > /var/www/html/cgi/saidamotorola.txt && cut -d '>' -f 117 /var/www/html/cgi/saidamotorola.txt | cut -d ' ' -f 2 | cut -d '<' -f 1 | cut -d ':' -f 1,2 > /var/www/html/cgi/finalmotorola.txt
recebe_hora_motorola=$(cat /var/www/html/cgi/finalmotorola.txt)
recebe_hora_motorola2=$(cat /var/www/html/cgi/finalmotorola2.txt)
echo $recebe_hora_motorola
echo $recebe_hora_motorola2
if test $recebe_hora_motorola != $recebe_hora_motorola2
then
    php /var/www/html/cgi/email_motorola.php
    recebe_hora_motorola2=$(cat /var/www/html/cgi/finalmotorola.txt > /var/www/html/cgi/finalmotorola2.txt)
    echo $recebe_hora_motorola2 
else
    echo "errado" 
fi
