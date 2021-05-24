-- Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- siga  exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela Produto com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
-- Faça um um select com Inner join entre  tabela categoria e produto.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
CREATE TABLE tb_categoria (
id_categoria INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (255),
formato VARCHAR (255),
linhas VARCHAR (2550),
PRIMARY KEY (id_categoria)
);
-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria (categoria,formato,linhas)
VALUES
('Bovinos','Bifes','Ouro'),
('Bovinos','Peças','Ouro'),
('Aves','Filé','Premium'),
('Aves','Pedaços','Premium'),
('Pescados','Peças','Peixes de água doce'),
('Pescados','Filé','Peixes de água doce');
-- Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
CREATE TABLE tb_produto (
id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
peso VARCHAR (255),
descricao VARCHAR (255),
preco DECIMAL (10,2),
id_categoria INT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);
-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto (nome,peso,descricao,preco,id_categoria)
VALUES
('Bife De Filé Mignon','900g','Carne congelada de bovino sem osso amaciada mecanicamente',62.96,1),
('Contra filé','1,9kg','Carne congelada de bovino sem osso amaciada mecanicamente adicionado de 10% de solução de água, sal e aditivos',75.92,2),
('Costela Bafo','2,5kg','Carne congelada de bovino com osso - costela do traseiro',67.4,2),
('Filé de Peito Temperado','1kg','Filé de peito, água (6,6%), sal, alho, cebola, pimenta branca, salsa, cebolinha, estragão, tomilho, estabilizante tripolifosfato de sódio, antioxidante eritorbato de sódio, aromas naturais (páprica e limão)',15.97,3),
('Coxinha da asa','1kg','Cortes congelados de frango',14.96,4),
('Filé de frango Aperitivo com Bacon','350g','Carne de Frango (filé de peito), bacon, alho em pasta, óleo de soja, páprica picante, cebola em pó, estabilizante tripolifosfato',15.97,4),
('Filé de Tilápia','800g','Peixe congelado',35.96,6),
('Salmão Porcionado','125g','Peixe congelado salmão filé em pedaço com pele.',11.96,5);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto
WHERE preco > 50;
-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto
WHERE nome LIKE 'C%';
-- Faça um um select com Inner join entre  tabela categoria e produto.
SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produto.id_categoria;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
SELECT id_produto,nome,peso,descricao AS Descrição , preco AS Preço FROM tb_produto
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_produto.id_categoria
WHERE tb_categoria.categoria LIKE '%Aves%';

SELECT * FROM tb_categoria;
SELECT * FROM tb_produto;