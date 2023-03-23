# Настройка формата окончания строк
Задайте правильный формат строк.  

Если у вас macOS или Linux, последовательно выполните две команды:  
   git config --global core.autocrlf input  
   git config --global core.autocrlf true  

Если у вас Windows, то выполните последовательно эти команды:  
   git config --global core.safecrlf warn  
   git config --global core.quotepath off  

Дальше общая для всех операционных систем команда, которая позволит избежать нечитаемых строк в неправильной кодировке:  
    git config --global core.safecrlf warn  

Настройка основной ветки:  
git config --global init.defaultBranch main  
