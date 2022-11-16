CREATE DATABASE meusovo;
USE meusovo;

CREATE TABLE produto(
	cd INT PRIMARY KEY NOT NULL,
    nome VARCHAR (20),
    descrição VARCHAR (90),
    preço INT,
    genero CHAR (20),
    status_prod VARCHAR (20)
);
CREATE TABLE pedido(
	cd_pedido INT PRIMARY KEY NOT NULL,
	nome_cliente VARCHAR (30),
	email_cliente VARCHAR (30),
	telefone_cliente BIGINT (14),
	endereço VARCHAR (100),
	cep VARCHAR (10),
	status_pedido VARCHAR (10)
);

CREATE TABLE fatura(
	cd_fatura INT PRIMARY KEY NOT NULL,
	preço_unit INT,
	data_fatura DATE,
	VL_TOTAL INT,
	cd_produto INT,
	foreign key (cd_produto) REFERENCES produto (cd)
	);









