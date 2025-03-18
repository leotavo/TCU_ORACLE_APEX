-- Criar TipoUnidadeJurisdicionada
CREATE TABLE TipoUnidadeJurisdicionada (
    id_tipo_unidade_jurisdicionada NUMBER(5,0) PRIMARY KEY,
    desc_tipo_unid_jurisd VARCHAR2(75) NOT NULL
)

-- Criar UnidadeJurisdicionada
CREATE TABLE UnidadeJurisdicionada (
    id_unidade_jurisdicionada NUMBER(5,0) PRIMARY KEY,
    nome_unidade_jurisdicionada VARCHAR2(150) NOT NULL,
    sigla_unidade_jurisdicionada VARCHAR2(10) NOT NULL,
    id_tipo_unidade_jurisdicionada NUMBER(5,0) NOT NULL
)

-- Criar AgentePublico
CREATE TABLE AgentePublico (
    id_agente_publico NUMBER(7,0) PRIMARY KEY,
    nome_completo VARCHAR2(150) NOT NULL,
    cpf VARCHAR2(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    cargo VARCHAR2(100) NOT NULL,
    regime_trabalho VARCHAR2(50) NOT NULL,
    id_unidade_jurisdicionada NUMBER(5,0) NOT NULL,
    tipo_vinculo VARCHAR2(50) NOT NULL
)

-- Criar TipoAto
CREATE TABLE TipoAto (
    id_tipo_ato NUMBER(3,0) PRIMARY KEY,
    descricao_tipo_ato VARCHAR2(75) NOT NULL,
    sujeito_a_registro CHAR(1) CHECK (sujeito_a_registro IN ('S', 'N')) NOT NULL
)

-- Criar StatusAto
CREATE TABLE StatusAto (
    id_status_ato NUMBER(5,0) PRIMARY KEY,
    descricao_status_ato VARCHAR2(50) NOT NULL
)

-- Criar AtributoAto
CREATE TABLE AtributoAto (
    id_atributo_ato NUMBER(5,0) PRIMARY KEY,
    nome_atributo_ato VARCHAR2(75) NOT NULL,
    descricao_atributo_ato VARCHAR2(200) NOT NULL
)

-- Criar AtoAdministrativo
CREATE TABLE AtoAdministrativo (
    id_ato_administrativo NUMBER(10,0) PRIMARY KEY,
    id_tipo_ato NUMBER(3,0) NOT NULL,
    id_unidade_jurisdicionada NUMBER(5,0) NOT NULL,
    id_agente_publico NUMBER(7,0) NOT NULL,
    data_assinatura DATE NOT NULL,
    data_vigencia DATE NOT NULL,
    data_cadastro DATE NOT NULL,
    id_status_ato NUMBER(5,0) NOT NULL
)

-- Criar DetalheAto
CREATE TABLE DetalheAto (
    id_detalhe_ato NUMBER(10,0) PRIMARY KEY,
    id_ato_administrativo NUMBER(10,0) NOT NULL,
    id_atributo_ato NUMBER(5,0) NOT NULL,
    valor_detalhe_ato VARCHAR2(255) NOT NULL
)

-- Criar HistoricoAto
CREATE TABLE HistoricoAto (
    id_historico_ato NUMBER(10,0) PRIMARY KEY,
    id_ato_administrativo NUMBER(10,0) NOT NULL,
    id_status_ato NUMBER(5,0) NOT NULL,
    data_atualizacao_status DATE NOT NULL,
    descricao_atualizacao_status VARCHAR2(50) NOT NULL
)
