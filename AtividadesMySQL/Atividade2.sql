-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
CREATE DATABASE db_ecommerce;

-- Crie uma tabela produtos,5 atributos relevantes dos produtos
CREATE TABLE tb_produtos (
id_produtos INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255) ,
tipo VARCHAR (255),
cor VARCHAR (255),
tamanho VARCHAR (255),
preco FLOAT NULL,
PRIMARY KEY (id_produtos)
);
-- Popule esta tabela com até 8 dados;
INSERT INTO tb_produtos (nome,tipo,cor,tamanho,preco)
VALUES
('Vestido', 'Roupas', 'Vermelho', 'P,M,G,GG', 550),
('Camiseta', 'Roupas', 'Azul', 'P,M,G,GG', 49.99),
('Calça', 'Roupas', 'Jeans', '46,47,48', 300.00),
('Tênis', 'Sapatos', 'Branco', '37,38,39', 600),
('Cinto', 'Acessórios', 'Preto', 'P,M,GG', 80.00),
('Moletom', 'Roupas', 'Azul Claro', 'G,GG', 100.00),
('Sandália', 'Sapatos', 'Bege', '34,35,36', 520),
('Lenço', 'Acessórios', 'Estampado', 'Tamanho Único', 50.99);
-- Faça um select que retorne os produtos com o valor maior do que 500.
SELECT nome,preco,tipo FROM tb_produtos WHERE preco > 500;
-- Faça um select que retorne os funcionaries com o salário menor do que 500.
SELECT nome,preco,tipo FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 450 WHERE id_produtos =4;

SELECT * FROM tb_produtos