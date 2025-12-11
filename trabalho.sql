CREATE DATABASE trabalho;
USE trabalho;

-- ========================================
-- TABELA: OCORRENCIA
-- ========================================

CREATE TABLE ocorrencia (
    codigo_ocorrencial INT PRIMARY KEY,
    ocorrencia_classificacao VARCHAR(100),
    ocorrencia_latitude DECIMAL(15,12),
    ocorrencia_longitude DECIMAL(15,12),
    ocorrencia_cidade VARCHAR(100),
    ocorrencia_uf VARCHAR(2),
    ocorrencia_pais VARCHAR(100),
    ocorrencia_aerodromo VARCHAR(100),
    ocorrencia_dia DATE,
    ocorrencia_hora TIME,
    investigacao_aeronave_liberada VARCHAR(3),
    investigacao_status VARCHAR(100),
    divulgacao_relatorio_numero VARCHAR(50),
    divulgacao_relatorio_publicado VARCHAR(3),
    divulgacao_dia_publicacao DATE,
    total_recomendacoes INT,
    total_aeronaves_envolvidas INT,
    ocorrencia_saida_pista VARCHAR(3)
);

-- ========================================
-- TABELA: AERONAVE
-- ========================================

CREATE TABLE aeronave (
    id_aeronave INT NOT NULL AUTO_INCREMENT,
    codigo_ocorrencia2 INT,
    aeronave_matricula VARCHAR(10),
    aeronave_operador_categoria VARCHAR(100),
    aeronave_tipo_veiculo VARCHAR(100),
    aeronave_fabricante VARCHAR(100),
    aeronave_modelo VARCHAR(100),
    aeronave_tipo_icao VARCHAR(10),
    aeronave_motor_tipo VARCHAR(100),
    aeronave_motor_quantidade VARCHAR(100),
    aeronave_pmd DECIMAL(10,2),
    aeronave_pmd_categoria VARCHAR(100),
    aeronave_assentos INT,
    aeronave_ano_fabricacao INT,
    aeronave_pais_fabricante VARCHAR(100),
    aeronave_pais_registro VARCHAR(100),
    aeronave_registro_categoria VARCHAR(100),
    aeronave_registro_segmento VARCHAR(100),
    aeronave_voo_origem VARCHAR(100),
    aeronave_voo_destino VARCHAR(100),
    aeronave_fase_operacao VARCHAR(100),
    aeronave_tipo_operacao VARCHAR(100),
    aeronave_nivel_dano VARCHAR(100),
    aeronave_fatalidades_total INT,
    PRIMARY KEY (id_aeronave),
    KEY fk_aeronave_ocorrencia (codigo_ocorrencia2),
    CONSTRAINT fk_aeronave_ocorrencia
        FOREIGN KEY (codigo_ocorrencia2)
        REFERENCES ocorrencia (codigo_ocorrencial)
);

-- ========================================
-- TABELA: FATOR_CONTRIBUINTE
-- ========================================

CREATE TABLE fator_contribuinte (
    id_fator INT NOT NULL AUTO_INCREMENT,
    codigo_ocorrencias INT,
    fator_nome VARCHAR(100),
    fator_aspecto VARCHAR(100),
    fator_condicionante VARCHAR(100),
    fator_area VARCHAR(100),
    PRIMARY KEY (id_fator),
    KEY fk_fator_ocorrencia (codigo_ocorrencias),
    CONSTRAINT fk_fator_ocorrencia
        FOREIGN KEY (codigo_ocorrencias)
        REFERENCES ocorrencia (codigo_ocorrencial)
);

-- ========================================
-- TABELA: OCORRENCIA_TIPO
-- ========================================

CREATE TABLE ocorrencia_tipo (
    id_ocorrencia_tipo INT NOT NULL AUTO_INCREMENT,
    codigo_ocorrencial INT,
    ocorrencia_tipo VARCHAR(255),
    ocorrencia_tipo_categoria VARCHAR(255),
    taxonomia_tipo_icao VARCHAR(10),
    PRIMARY KEY (id_ocorrencia_tipo),
    KEY fk_ocorrencia_tipo_ocorrencia (codigo_ocorrencial),
    CONSTRAINT fk_ocorrencia_tipo_ocorrencia
        FOREIGN KEY (codigo_ocorrencial)
        REFERENCES ocorrencia (codigo_ocorrencial)
);

-- ========================================
-- TABELA: RECOMENDACAO
-- ========================================

CREATE TABLE recomendacao (
    id_recomendacao INT NOT NULL AUTO_INCREMENT,
    codigo_ocorrencia4 INT,
    recomendacao_numero VARCHAR(50),
    recomendacao_dia_assinatura DATE,
    recomendacao_dia_encaminhamento DATE,
    recomendacao_dia_feedback DATE,
    recomendacao_status VARCHAR(100),
    recomendacao_destinatario_sigla VARCHAR(10),
    recomendacao_destinatario VARCHAR(255),
    recomendacao_conteudo TEXT,
    PRIMARY KEY (id_recomendacao),
    KEY fk_recomendacao_ocorrencia (codigo_ocorrencia4),
    CONSTRAINT fk_recomendacao_ocorrencia
        FOREIGN KEY (codigo_ocorrencia4)
        REFERENCES ocorrencia (codigo_ocorrencial)
);
