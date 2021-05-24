/* Atividade 2-Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga  exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre  tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).*/
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR (255),
tamanho VARCHAR(255),
metodo_de_pagamento VARCHAR (255),
PRIMARY KEY (id_categoria)
);
-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
CREATE TABLE tb_pizza(
id_pizza INT NOT NULL AUTO_INCREMENT,
sabor VARCHAR (255),
preco DECIMAL(10,2),
data_venda DATE,
hora_venda TIME,
id_categoria INT,
 PRIMARY KEY(id_pizza),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);
-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (tipo,tamanho,metodo_de_pagamento)
VALUES
('Salgada','Grande','Cartão'),
('Salgada','Grande','Dinheiro'),
('Doce','Grande','Dinheiro'),
('Doce','Grande','Cartão'),
('Vegana','Grande','Dinheiro'),
('Vegana','Grande','Cartão');
-- Popule esta tabela pizza com até 8 dados.
INSERT INTO tb_pizza (sabor,data_venda,hora_venda,preco,id_categoria)
VALUES
('Calabresa','2021-05-21','21:30',46.50, 1),
('Portuguesa','2021-05-21','22:30',56.80, 2),
('Quatro Queijos','2021-05-21','20:55',60.00,1),
('Marguerita','2021-05-21','23:43',65.50,5),
('Callifórnia','2021-05-21','19:37',29.60,3),
('Romeu e Julieta','2021-05-21','22:15',30.70,4),
('Banana com Canela','2021-05-21','19:48',31.80,6),
('Chocolate','2021-05-21','18:39',29.90,4);
-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_pizza
WHERE preco > 45;
-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza
WHERE preco BETWEEN 29 AND 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM  tb_pizza WHERE sabor LIKE 'C%';
-- Faça um um select com Inner join entre  tabela categoria e pizza.Faça um um select com Inner join entre  tabela categoria e pizza.
SELECT * FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_pizza.id_categoria;

SELECT id_pizza,sabor,data_venda,hora_venda,tipo,tamanho,preco,metodo_de_pagamento FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_pizza.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
SELECT * FROM tb_pizza
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_pizza.id_categoria
WHERE tb_pizza.tipo LIKE '%Doce%';


SELECT * FROM tb_pizza
ORDER BY preco ASC;

SELECT * FROM tb_pizza;
SELECT * FROM tb_categoria;

