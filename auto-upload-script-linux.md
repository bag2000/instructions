# Автозагрузка скриптов

sudo nano /lib/systemd/system/runscript.service  

[Unit]  
Description=My Script Service  
After=multi-user.target  
[Service]  
Type=idle  
ExecStart=/usr/bin/local/script.sh  
[Install]  
WantedBy=multi-user.target  

sudo chmod 644 /lib/systemd/system/runscript.service  
sudo systemctl daemon-reload  
sudo systemctl enable myscript.service  
sudo systemctl start myscript.service  


## Не забываем сделать скрипт исполняемым
sudo chmod u+x /usr/local/bin/script