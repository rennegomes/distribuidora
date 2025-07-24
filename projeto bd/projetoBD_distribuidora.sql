create database if not exists distribuidora;
use distribuidora;

create table if not exists fornecedor (
	id int auto_increment primary key,
    nome varchar(60) not null,
    cnpj varchar(18) not null,
    email varchar(80),
    telefone varchar(20),
    ativo boolean
);

create table if not exists distribuidora (
	id int auto_increment primary key,
    nome varchar(60) not null,
    cnpj varchar(18) not null,
    email varchar(80),
    telefone varchar(20),
    ativo boolean
);

create table if not exists compra (
	id int auto_increment primary key,
    data datetime,
    valorTotal decimal(10,2),
    fornecedor_id int,
    distribuidora_id int,
    CONSTRAINT fk_compra_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedor(id),
    CONSTRAINT fk_compra_distribuidora FOREIGN KEY (distribuidora_id) REFERENCES distribuidora(id)
);

create table if not exists produto (
	id int auto_increment primary key,
    nome varchar(60) not null,
    categoria varchar(30) not null,
    precoCompra decimal(10,2) not null,
    precoVenda decimal(10,2) not null,
    quantidade decimal(10,2) not null,
    unidadeMedida varchar(10) not null,
    validade date not null,
    marca varchar(45) not null
);

create table if not exists itemCompra (
	quantidade decimal(10,2),
    precoUnitario decimal(10,2),
    compra_id int,
    produto_id int,
    CONSTRAINT fk_itemCompra_compra FOREIGN KEY (compra_id) REFERENCES compra(id),
    CONSTRAINT fk_itemCompra_produto FOREIGN KEY (produto_id) REFERENCES produto(id)
);

create table if not exists movimentacaoEstoque (
	id int auto_increment primary key,
    tipo varchar(10),
	quantidade decimal(10,2),
    origem varchar(50),
    data datetime,
    produto_id int,
    CONSTRAINT fk_movimentacaoEstoque_produto FOREIGN KEY (produto_id) REFERENCES produto(id)
);

create table if not exists venda (
	id int auto_increment primary key,
    data datetime,
	valorTotal decimal(10,2)
);

create table if not exists itemVenda (
	quantidade decimal(10,2),
    precoUnitario decimal(10,2),
    venda_id int,
    produto_id int,
    CONSTRAINT fk_itemVenda_venda FOREIGN KEY (venda_id) REFERENCES venda(id),
    CONSTRAINT fk_itemVenda_produto FOREIGN KEY (produto_id) REFERENCES produto(id)
);