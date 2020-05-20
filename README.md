Для запуска проекта необходимо выполнить следующие команды:
>sudo docker-compose up # запуск докер контейнера с базой данных

>rails db:setup # миграция и seed БД

>rails s -b 0.0.0.0 -p 8000 # запуск сервера Puma, который будет доступен в локальной сети на 8000-ом порту

Visit http://localhost:3000/admin and log in as the default user:

    User: admin@example.com

    Password: password
