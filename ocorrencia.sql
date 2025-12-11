CREATE TABLE OCORRENCIA (
    codigo_ocorrencial INTEGER PRIMARY KEY,
    codigo_ocorrencia4 INTEGER,
    codigo_ocorrencia2 INTEGER,
    codigo_ocorrencia3 INTEGER,
    ocorrencia_classificacao VARCHAR(100),
    ocorrencia_latitude NUMERIC(15, 12), -- Ajustado para NUMERIC/DECIMAL para precisão geográfica
    ocorrencia_longitude NUMERIC(15, 12), -- Ajustado para NUMERIC/DECIMAL para precisão geográfica
    ocorrencia_cidade VARCHAR(100),
    ocorrencia_uf VARCHAR(2),
    ocorrencia_pais VARCHAR(100),
    ocorrencia_aerodromo VARCHAR(100),
    ocorrencia_dia DATE,
    ocorrencia_hora TIME,
    investigacao_aeronave_liberada VARCHAR(3), -- Sim/Não
    investigacao_status VARCHAR(100),
    divulgacao_relatorio_numero VARCHAR(50),
    divulgacao_relatorio_publicado VARCHAR(3), -- Sim/Não
    divulgacao_dia_publicacao DATE,
    total_recomendacoes INTEGER,
    total_aeronaves_envolvidas INTEGER,
    ocorrencia_saida_pista VARCHAR(3) -- Sim/Não
);
