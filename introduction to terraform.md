Задание 1
Перейдите в каталог src. Скачайте все необходимые зависимости, использованные в проекте.
Изучите файл .gitignore. В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?
Выполните код проекта. Найдите в state-файле секретное содержимое созданного ресурса random_password, пришлите в качестве ответа конкретный ключ и его значение.
Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла main.tf. Выполните команду terraform validate. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.
Выполните код. В качестве ответа приложите: исправленный фрагмент кода и вывод команды docker ps.
Замените имя docker-контейнера в блоке кода на hello_world. Не перепутайте имя контейнера и имя образа. Мы всё ещё продолжаем использовать name = "nginx:latest". Выполните команду terraform apply -auto-approve. Объясните своими словами, в чём может быть опасность применения ключа -auto-approve. Догадайтесь или нагуглите зачем может пригодиться данный ключ? В качестве ответа дополнительно приложите вывод команды docker ps.
Уничтожьте созданные ресурсы с помощью terraform. Убедитесь, что все ресурсы удалены. Приложите содержимое файла terraform.tfstate.
Объясните, почему при этом не был удалён docker-образ nginx:latest. Ответ ОБЯЗАТЕЛЬНО НАЙДИТЕ В ПРЕДОСТАВЛЕННОМ КОДЕ, а затем ОБЯЗАТЕЛЬНО ПОДКРЕПИТЕ строчкой из документации terraform провайдера docker. (ищите в классификаторе resource docker_image )

Решение:
<img width="272" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/5e34df4a-47c5-4233-9260-5d291f683081">

Согласно этому .gitignore, допустимо сохранить личную, секретную информацию в файле personal.auto.tfvars

<img width="881" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/8d6691f1-dfde-4517-8c38-c58d21f3962c">

нужно добавить имя ресурса nginx для блока docker image и имя должно начинаться с буквы, а не цифры.
<img width="908" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/de0e6723-8454-4c23-804a-e9b529997010">

и тут надо изменить имя ресурса 
<img width="489" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/eabb56bb-b080-4997-8790-c6a736ff63d0">

Исправленный код
<img width="347" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/9cd78252-0d4f-400e-bb44-2df4fe009947">

вывод docker ps
<img width="779" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/3bd5976a-638b-4a07-b976-919e8199d77d">

изменил название контейнеру на hello world
<img width="568" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/e43c3a63-de01-4121-88f0-77720fec65d6">
ключ -auto-approve  -  авто подтверждение создания или дестроя ресурсов, он может пригодиться для настройки автоматизации ci/cd


содержимое terraform.tfstate
<img width="408" alt="image" src="https://github.com/Franky12111990/homeworks-terraform/assets/121640886/77069754-a043-4f79-86a7-f5b3ca32811c">

keep_locally = true  Этот атрибут указывает Terraform не удалять локально загруженные образы Docker после завершения применения




