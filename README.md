# README

# Requisitos

* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

Para executar a aplicação, realize os sequintes passos, no diretório da aplicação:

1-)
```
  docker-compose build
```
Depois de definido as imagens necessárias, já é possível rodar a aplicação através do comando abaixo:

2-)
```
  docker-compose up
```

Para criar o banco, execute o comando abaixo

3-)
para normalizar a base de dodos:
```
  docker-compose run web rake db:setup
```

Agora a aplicação pode ser acessado pelo host http://localhost:3000

##Acesso admin
email: 'admin@mail.com', senha: '12345678'

##Acesso Votação
email: 'user@mail.com', senha: '12345678'

##Testes
execute o sequinte comando para executar os testes:
```
  docker-compose run web rspec
```

## Observação

Se você parar a aplicação de exemplo e tentar reiniciá-la, você pode receber o
seguinte erro: web_1 | Um servidor já está em execução.

Verifique:
```
/indeva/tmp/pids/server.pid
```
Uma maneira de resolver isso é excluir o arquivo:

```
sudo rm tmp /pids /server.pid
```
e em seguida, reiniciar a aplicação com docker-compose up.
