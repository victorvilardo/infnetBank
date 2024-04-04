DROP TABLE IF EXISTS TB_CLIENTE;
DROP TABLE IF EXISTS TB_TP_OPERACAO;
DROP TABLE IF EXISTS TB_OPERACAO;

-- CLIENTES --
CREATE TABLE TB_CLIENTE (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  nome VARCHAR(250) NOT NULL,
  usuario VARCHAR(50) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  saldo DECIMAL(10,2) DEFAULT 0.00,
  agencia INT DEFAULT NOT NULL,
  conta INT DEFAULT NOT NULL
);

INSERT INTO TB_CLIENTE (nome, usuario, cpf, saldo, agencia, conta) VALUES
  ('Sydney Matagal', 'symata', '60696996022', 1000000.00, 1, 123456),
  ('Daniella de Mercúrio', 'dademer', '60024193062', 1500000.00, 1, 987654),
  ('Pequeno Carlos Marrom', 'pcm', '23164303092', 2000000.00, 1, 951753);
  
  
-- OPERACAO --
CREATE TABLE TB_TP_OPERACAO (
  id INT PRIMARY KEY,
  nome VARCHAR(250) NOT NULL,
  ativo CHAR DEFAULT 'S'
);

INSERT INTO TB_TP_OPERACAO (id, nome) VALUES
  (1, 'CREDITO EM CONTA'),
  (2, 'PAGAMENTO DE CONTA'),
  (3, 'TRANSFERENCIA PARA OUTRA CONTA');
 
CREATE TABLE TB_OPERACAO (
  id_cliente INT NOT NULL,
  id_operacao INT NOT NULL,
  data TIMESTAMP NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  descricao VARCHAR(250),
  FOREIGN KEY (id_cliente) REFERENCES TB_CLIENTE (id),
  FOREIGN KEY (id_operacao) REFERENCES TB_TP_OPERACAO (id)
);

INSERT INTO TB_OPERACAO (id_operacao, id_cliente, data, descricao, valor) VALUES
  (1, 1, '2020-08-20 12:20:22', 'CREDITO EM CONTA', 2000000.00),
  (2, 1, '2020-08-20 14:00:20', 'PAGAMENTO DE CONTA', 500000.00),
  (3, 1, '2020-08-30 11:10:55', 'TRANSFERENCIA PARA OUTRA CONTA', 500000.00),
  (1, 2, '2020-08-01 12:30:32', 'CREDITO EM CONTA', 500000.00),
  (1, 2, '2020-08-05 14:10:10', 'CREDITO EM CONTA', 500000.00),
  (1, 2, '2020-08-30 11:10:55', 'CREDITO EM CONTA', 500000.00),
  (1, 3, '2020-07-15 16:00:00', 'CREDITO EM CONTA', 3000000.00),
  (3, 3, '2020-08-05 14:10:10', 'TRANSFERENCIA PARA OUTRA CONTA', 500000.00),
  (3, 3, '2020-08-20 12:20:22', 'TRANSFERENCIA PARA OUTRA CONTA', 500000.00);
 