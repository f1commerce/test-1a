# test-1a

Dada a estrutura de banco de dados no repositório no arquivo "db.sql", crie uma consulta sql que permita a geração de um relatório de produtos a partir dos parâmetros de pesquisa a seguir:
1. Palavra chave: Deve ser usada para comparação no nome do produto, no código ou em qualquer valor de campo adicional do produto. Ex: azul
2. Preço: 500.00. Produto deve ser listado no relatório se o preço for menor ou igual ao valor.
3. Estoque: produto deve ser listado no relatório se possui estoque maior que 0 em qualquer depósito

O relatório deve possuir as seguintes colunas:
1. Id do produto
2. Código do produto
3. Nome do produto
4. Preço do produto
5. Soma dos estoques positivos do produto

Duas variações da consulta devem ser feitas em relação à ordenação:
1. Ordenado por nome ascendentemente
2. Ordenado por soma de estoque positivo descendentemente

## Iniciando ambiente
Para iniciar um mysql local utilizando docker (ou utilize seu MySQL próprio ou WAMP):
```bash
docker run --detach -it --name mysql \
 --env MYSQL_ALLOW_EMPTY_PASSWORD=1 \
 --env MYSQL_ROOT_PASSWORD="" \
 --publish 3306:3306 \
   mysql:5.6
```

Para conectar ao DB do docker do seu Host:
```
Host: 172.17.0.1
Porta: 3306
```


# test-2a
### Criar API para consumo e inserção de dados utilizando a base de dados da questão 1(test-1a) como referência.
### Requisitos:
- Codificar em PHP ou NodeJs 
- Frameworks ou Core: A sua escolha
- Estrutura de requisições de envio em json
### Endpoints requisitados, e link com exemplo de dados response/request:
- Consulta de produto:
[GET produtos](https://github.com/f1commerce/test-1a/wiki/get_produtos)
- Criação de produto:
[POST produtos](https://github.com/f1commerce/test-1a/wiki/post_produtos)
- Alteração de estoque:
[PUT produtos](https://github.com/f1commerce/test-1a/wiki/put_estoque)
- Consulta de estoque:
[GET produtos](https://github.com/f1commerce/test-1a/wiki/get_estoque)
- Exemplos de retorno sucesso/erro:
[mensagens de retorno](https://github.com/f1commerce/test-1a/wiki/mensagens)

### Opcional:
- Implementar autenticação Ex: Basic auth, jwt, ...
