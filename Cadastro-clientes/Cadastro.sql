create database sprint1;
use sprint1;

CREATE TABLE CadastroCliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT, -- Identificação do cliente
	tipoPessoa VARCHAR (08), CONSTRAINT chkPessoa CHECK(tipoPessoa = 'Jurídica'), -- Fisica ou juridica?
    Nome VARCHAR (60), -- Nome completo ou Nome da empresa
	CNPJ CHAR (18), -- Deve conter (. / -)
	Logradouro VARCHAR (60), -- Rua
    Numero INT,
	Bairro VARCHAR (40), 
    Complemento VARCHAR (40),
    Cidade VARCHAR (20), 
	CEP CHAR (08), 
    idRastreio INT, -- Referência para localizar barril 
    Marca VARCHAR (30),
    tipoVinho VARCHAR (10) NOT NULL, CONSTRAINT chkVinho CHECK(tipoVinho IN('Tinto','Rosé','Brancos','Espumantes')),-- Cliente deve colocar o tipo de vinho que vai armazenar
    Quantidade INT NOT NULL, -- Quantidade do produto
    dataLimite DATE
); 