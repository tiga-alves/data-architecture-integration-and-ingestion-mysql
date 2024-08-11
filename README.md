# data-architecture-integration-and-ingestion-mysql

1. Primeiro, certifique-se de que você tem o Docker instalado em sua máquina. Se não tiver, você pode baixá-lo e instalá-lo a partir do site oficial do Docker. [Acesse](https://www.docker.com/products/docker-desktop/)


2. Criar e executar o container MySQL. Abra um terminal e execute o seguinte comando:
```docker
docker run --name sapataria -e MYSQL_ROOT_PASSWORD=minhasenha -p 3307:3306 -d mysql:latest
```
Este comando cria um container chamado "sapataria", executa-o em modo detached (-d). Note que mudamos o mapeamento de porta para -p 3307:3306. Isso significa que a porta 3306 dentro do container (padrão do MySQL) será mapeada para a porta 3307 no seu host para evitar conflitos com sua conexão existente.


3. Verifique se o container está rodando: 
```docker
docker ps
```

4. Acesse o shell MySQL: O acesso ao shell MySQL não muda, pois estamos nos conectando diretamente ao container:
Isso abrirá o shell CQL dentro do container.
```docker
docker exec -it sapataria mysql -uroot -pminhasenha
```

5. Execute os scripts: Agora você pode copiar e colar os scripts disponíveis neste repositório diretamente no shell MySQL. Comece com o script de criação do schema (schema.sql)


6. Depois de criar o schema, você pode executar o script de inserção em BATCH (batch_insertion.sql)

Motivo de optarmos por inserção em BATCH: Atomicidade, pois garante que uma transação seja tratada como uma única unidade de operação. Isso significa que todas as operações em uma transação devem ser concluídas com sucesso, ou nenhuma delas será aplicada ao banco de dados.


7. Verifique se os dados foram inseridos corretamente: Você pode executar algumas consultas para verificar se os dados foram inseridos corretamente. Por exemplo:

```sql
-- -----------------------------------------------------
-- SELECT statements
-- -----------------------------------------------------
SELECT * FROM `sapataria`.`clientes`;
SELECT * FROM `sapataria`.`pedidos`;
SELECT * FROM `sapataria`.`produtos`;
SELECT * FROM `sapataria`.`ItensPedido`;

-- -----------------------------------------------------
-- Total gasto por cada cliente
-- -----------------------------------------------------
SELECT
  clientes.nome AS nome_cliente,
  clientes.cpf,
  SUM(pedidos.valor_pago) AS total_gasto
FROM
  `sapataria`.`clientes`
INNER JOIN
  `sapataria`.`pedidos` ON clientes.id_cliente = pedidos.id_cliente
GROUP BY
  clientes.nome, clientes.cpf
ORDER BY
  total_gasto ASC;

```

8. Saia do shell MySQL: Quando terminar, você pode sair do shell MySQL digitando exit.

9. Para parar o container (quando não precisar mais dele):
```docker
docker stop sapataria
```
10. Para remover o container (se não precisar mais dele):
```docker
docker rm sapataria
```
