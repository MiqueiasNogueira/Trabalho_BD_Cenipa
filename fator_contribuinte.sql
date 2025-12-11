CREATE TABLE FATOR_CONTRIBUINTE (
    codigo_ocorrencias INTEGER, -- Chave estrangeira para a tabela OCORRENCIA (codigo_ocorrencial)
    fator_nome VARCHAR(100),
    fator_aspecto VARCHAR(100),
    fator_condicionante VARCHAR(100),
    fator_area VARCHAR(100)
);
