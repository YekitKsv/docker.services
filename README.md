# Docker service
### Для запуска jenkins ввести команду:
<pre>cd jenkins_docker && sudo docker-compose up -d</pre>
Запустится jenkins на 8080 порту.
<br>
### Для запуска сервисов selenoid ввести команду:
<pre>cd selenoid_docker && sudo sh run.sh</pre>
Запустится selenoid на 4444 порту и selenoid-ui на 8081 порту.
Загрузятся образы браузеров.
Загружать образы можно коммандой:
<pre>cd selenoid_docker && sudo sh download_browser_images.sh</pre>
В selenoid нужно переодически обновлять файл browsers.json для получения более свежих версий браузера.