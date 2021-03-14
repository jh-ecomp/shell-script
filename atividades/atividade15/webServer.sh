#!/bin/bash

apt install -y apache2

cat << EOF > /usr/local/bin/atividade.sh
#!/bin/bash

while true
do
   DATA=\$(date +%D-%H:%M:%S)
   TIME_START=\$(uptime | tr ',' ' ' | tr -s [:space:] ' ' | cut -d' ' -f4)
   LOAD_AVERAGE=\$(uptime | tr -s [:space:] ' ' | cut -d' ' -f10-)
   MEM_USE=\$(free -m | grep  'Mem' | tr -s [:space:] ' ' | cut -d' ' -f3)
   MEM_FREE=\$(free -m | grep  'Mem' | tr -s [:space:] ' ' | cut -d' ' -f7)
   RECEIVE=\$(cat /proc/net/dev | grep -e "eth0" | tr -s [:space:] ' ' | cut -d' ' -f3)
   TRANSMIT=\$(cat /proc/net/dev | grep -e "eth0" | tr -s [:space:] ' ' | cut -d' ' -f11)
   echo "$DATA - $TIME_START - $LOAD_AVERAGE - $MEM_USE - $MEM_FREE - $RECEIVE - $TRANSMIT" >> /var/log/mensagens.log

   sleep 5
   echo 
    <!DOCTYPE html>
    <html>
        <head>
            <title>Scripts </title>
        </head>

        <body>
          <p>Aluno: Joao Henrique/p>
          <p> Matricula: 387634</p>
          <p>
            
          </p>
          <p>O horário e data da coleta de informações: $DATA</p>
          <p>Tempo que a máquina está ativa: $TIME_START</p>
          <p>Carga média do sistema: $LOAD_AVERAGE</p>
          <p>Quantidade de memória livre e ocupada: $MEM_FREE | $MEM_USE </p>
          <p>Quantidade de bytes recebidos e enviados através da interface eth0: $RECEIVE | $TRANSMIT</p>
      
      </body>
    </html>
done > /var/www/html/index.html
EOF

chmod 744 /usr/local/bin/atividade.sh

# Por que você colocou um aspas ao final de default.target? Isso fez com que sua solução não funcioasse.
cat << \EOF > /etc/systemd/system/my-script.service
[Unit]
After=network.target

[Service]
ExecStart=/usr/local/bin/atividade.sh

[Install]
WantedBy=default.target" 
EOF

chmod 664 /etc/systemd/system/my-script.service

systemctl daemon-reload

systemctl enable my-script.service

systemctl start my-script.service


