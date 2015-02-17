# django-with-postgres
Django 1.7.2 com Postgres 9.3

Criamos uma virtualenv:

```
$ virtualenv -p /usr/bin/python2.7 venv

```

Ativamos nosso virtualenv
```
$ source venv/bin/activate

```

Instalamos o Django na versão 1.7.2 

```
$ pip install django==1.7.2

```

Instalamos o pacote `psycopg2`

```
$ pip install psycopg2

```

Obs.: Caso você obtenha o erro abaixo ao insalar o pacote `psycopg2`

```
Error: You need to install postgresql-server-dev-X.Y for building a server-side extension or libpq-dev for building a client-side application.

```

Instale o seguinte pacote:

```
$ sudo apt-get install libpq-dev

```

