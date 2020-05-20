Для запуска проекта необходимо выполнить следующие команды:

>sudo docker-compose up 

Для запуска контейнера с базой данных

>yarn 

>bundle install

для установки необходимых пакетов

>rails db:setup 
Миграция и заполнение БД

>rails s -b 0.0.0.0 -p 8000 

Запуск сервера Puma, который будет доступен в локальной сети на 8000-ом порту

Visit http://localhost:8000/admin and log in as the default user:

    User: admin@example.com

    Password: password
