# Architektura serwisów internetowych

| Student  | Ruby | Rails |
| ------------- | ------------- | ------------- |
| Juliusz Gryglewski  | 2.5.0  |  5.2.0 |

## Projekt na egzamin
- CRUD umożliwiający dodawanie uczniów, nauczycieli i przedmiotów.

## Active Admin
- projekt zawiera framework Active Admin, który dodaje panel administratora

**Do uruchomienia wymagane jest dodanie gemów:**

>gem 'devise'

>gem 'activeadmin', github: 'activeadmin'

>gem 'inherited_resources', github: 'activeadmin/inherited_resources'

**Następnie w konsoli generujemy pliki**

>rails generate active_admin:install

**Aby dodać konto administratora z poziomu konsoli należy:**

Uruchomić rails console

Dodać konto administratora, np:

>AdminUser.create(:email => 'admin@admin.com', :password => 'password', :password_confirmation => 'password')

**W celu dodania modeli do panelu administratora należy wykonać polecenie:**
>rails generate active_admin:resource Nazwa_modelu

## Docker

- Link do Docker Hub -
https://hub.docker.com/r/julek200/compose/

**Uruchomienie:**

1. Docker pull julek200/compose
2. Docker-compose up


**Przydatne polecenia**

- Wyswietlenie obrazow : docker images

- Wyswietlenie kontenerow : docker ps -a

- Zatrzymanie : docker-compose stop

Jesli po uruchomieniu aplikacji pojawia sie informacja: 

- A server is already running. Check /../tmp/pids/server.pid.

Należy z folderu pids usunąć plik ‚server.pid’
