# Docker service
### Для запуска jenkins ввести команду:
<pre>cd jenkins_docker && docker-compose up -d</pre>
Запустится jenkins на 8080 порту.
<br>
### Для запуска сервисов selenoid ввести команду:
<pre>cd selenoid_docker && docker-compose up -d</pre>
Запустится selenoid на 4444 порту и selenoid-ui на 8081 порту.
В selenoid нужно переодически обновлять файл browsers.json для получения более свежих версий браузера.