sudo apt update && sudo apt upgrade  
sudo apt install -y curl  
curl -fsSL https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG | gpg --dearmor | sudo tee /usr/share/keyrings/yandex.gpg > /dev/null  
echo deb [arch=amd64 signed-by=/usr/share/keyrings/yandex.gpg] http://repo.yandex.ru/yandex-browser/deb stable main | sudo tee /etc/apt/sources.list.d/yandex-stable.list  
sudo apt update  
sudo apt install -y yandex-browser-stable  
sudo rm /etc/apt/sources.list.d/yandex-browser*.list  
