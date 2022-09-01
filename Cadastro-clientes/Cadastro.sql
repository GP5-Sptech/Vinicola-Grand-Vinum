create database sprint1;
use sprint1;

CREATE TABLE CadastroCliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT, -- Identificação do cliente
    NomeEmpresa VARCHAR (60), --  Nome da empresa
	CNPJ CHAR (18), -- Deve conter (. / -)
	Logradouro VARCHAR (60), -- Rua
    Numero INT,
	Bairro VARCHAR (40), 
    Complemento VARCHAR (40) DEFAULT ('Não tem'),
    Cidade VARCHAR (40), 
	CEP CHAR (09), 
    idRastreio INT, -- Referência para localizar barril 
    tipoVinho VARCHAR (10) NOT NULL, CONSTRAINT chkVinho CHECK(tipoVinho IN('Tinto','Rosé','Branco')),-- Cliente deve colocar o tipo de vinho que vai armazenar
    Quantidade INT NOT NULL -- Quantidade do produto em litros
); 

desc CadastroCliente;

drop table cadastrocliente;

