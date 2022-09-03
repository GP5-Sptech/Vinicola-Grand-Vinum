USE sprint1;

CREATE TABLE Arduino(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
NomeEmpresa VARCHAR (60),
Temperatura_Cº DECIMAL(4,2),
Umidade CHAR(7),
DataHora DATETIME
);

INSERT INTO Arduino (Temperatura_Cº, Umidade, DataHora) VALUES
(16.0, '70%', '2022-09-08 10:50:05'),
(15.4, '67%', '2022-09-08 10:51:32'),
(12.8, '71,2%', '2022-09-08 10:52:14');


SELECT * FROM Arduino;
SELECT * FROM Arduino WHERE idCliente = 1;
SELECT * FROM Arduino WHERE idCliente = 2;
SELECT * FROM Arduino WHERE idCliente = 3;


SELECT Temperatura_C, Umidade, DataHora FROM Arduino WHERE idCliente = 1;
SELECT Temperatura_C, Umidade, DataHora FROM Arduino WHERE idCliente = 2;
SELECT Temperatura_C, Umidade, DataHora FROM Arduino WHERE idCliente = 3;
