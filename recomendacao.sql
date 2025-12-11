CREATE TABLE RECOMENDACAO (
    codigo_ocorrencia4 INTEGER,
    recomendacao_numero VARCHAR(50),
    recomendacao_dia_assinatura DATE,
    recomendacao_dia_encaminhamento DATE,
    recomendacao_dia_feedback DATE NULL, -- Coluna não visível no CSV, mantida da estrutura inicial
    recomendacao_status VARCHAR(100) NULL, -- Coluna não visível no CSV, mantida da estrutura inicial
    recomendacao_destinatario_sigla VARCHAR(10) NULL, -- Coluna não visível no CSV, mantida da estrutura inicial
    recomendacao_destinatario VARCHAR(255) NULL, -- Coluna não visível no CSV, mantida da estrutura inicial
    recomendacao_conteudo TEXT
);
