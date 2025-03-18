# 📌 Modelo de Dados - Oracle APEX TCU

## 📖 Introdução
Este documento descreve a modelagem de dados utilizada no sistema para registro e controle de atos administrativos no **Tribunal de Contas da União (TCU)**, conforme requisitos especificados.

---

## 📌 Estrutura das Entidades e Relacionamentos

### 🏢 TipoUnidadeJurisdicionada
Define os tipos de órgãos públicos, como Órgão Público, Autarquia, Fundação, etc.

```sql
CREATE TABLE TipoUnidadeJurisdicionada (
    id_tipo_unidade_jurisdicionada NUMBER(5,0) PRIMARY KEY,
    descricao_tipo_unidade_jurisdicionada VARCHAR2(75) NOT NULL
);
```

---

### 🏛 UnidadeJurisdicionada
Registra os órgãos públicos responsáveis pelos atos administrativos.

```sql
CREATE TABLE UnidadeJurisdicionada (
    id_unidade_jurisdicionada NUMBER(5,0) PRIMARY KEY,
    nome_unidade_jurisdicionada VARCHAR2(150) NOT NULL,
    sigla_unidade_jurisdicionada VARCHAR2(10) NOT NULL,
    id_tipo_unidade_jurisdicionada NUMBER(5,0) NOT NULL,
    FOREIGN KEY (id_tipo_unidade_jurisdicionada) REFERENCES TipoUnidadeJurisdicionada(id_tipo_unidade_jurisdicionada)
);
```

---

### 👤 AgentePublico
Armazena os servidores públicos vinculados aos atos administrativos.

```sql
CREATE TABLE AgentePublico (
    id_agente_publico NUMBER(7,0) PRIMARY KEY,
    nome_completo VARCHAR2(150) NOT NULL,
    cpf VARCHAR2(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    cargo VARCHAR2(100) NOT NULL,
    regime_trabalho VARCHAR2(50) NOT NULL,
    id_unidade_jurisdicionada NUMBER(5,0) NOT NULL,
    tipo_vinculo VARCHAR2(50) NOT NULL,
    FOREIGN KEY (id_unidade_jurisdicionada) REFERENCES UnidadeJurisdicionada(id_unidade_jurisdicionada)
);
```

---

### 📜 TipoAto
Classifica os tipos de atos administrativos.

```sql
CREATE TABLE TipoAto (
    id_tipo_ato NUMBER(3,0) PRIMARY KEY,
    descricao_tipo_ato VARCHAR2(75) NOT NULL,
    sujeito_a_registro CHAR(1) CHECK (sujeito_a_registro IN ('S', 'N')) NOT NULL
);
```

---

### 🔄 StatusAto
Define os status que um ato administrativo pode assumir.

```sql
CREATE TABLE StatusAto (
    id_status_ato NUMBER(5,0) PRIMARY KEY,
    descricao_status_ato VARCHAR2(50) NOT NULL
);
```

---

### 🏷 AtributoAto
Define os atributos específicos de um ato administrativo.

```sql
CREATE TABLE AtributoAto (
    id_atributo_ato NUMBER(5,0) PRIMARY KEY,
    nome_atributo_ato VARCHAR2(75) NOT NULL,
    descricao_atributo_ato VARCHAR2(200) NOT NULL
);
```

---

### 📄 AtoAdministrativo
Registra os atos administrativos formalizados no sistema.

```sql
CREATE TABLE AtoAdministrativo (
    id_ato_administrativo NUMBER(10,0) PRIMARY KEY,
    id_tipo_ato NUMBER(3,0) NOT NULL,
    id_unidade_jurisdicionada NUMBER(5,0) NOT NULL,
    id_agente_publico NUMBER(7,0) NOT NULL,
    data_assinatura DATE NOT NULL,
    data_vigencia DATE NOT NULL,
    data_cadastro DATE NOT NULL,
    id_status_ato NUMBER(5,0) NOT NULL,
    FOREIGN KEY (id_tipo_ato) REFERENCES TipoAto(id_tipo_ato),
    FOREIGN KEY (id_unidade_jurisdicionada) REFERENCES UnidadeJurisdicionada(id_unidade_jurisdicionada),
    FOREIGN KEY (id_agente_publico) REFERENCES AgentePublico(id_agente_publico),
    FOREIGN KEY (id_status_ato) REFERENCES StatusAto(id_status_ato)
);
```

---

### 🛠 DetalheAto
Armazena detalhes complementares dos atos administrativos.

```sql
CREATE TABLE DetalheAto (
    id_detalhe_ato NUMBER(10,0) PRIMARY KEY,
    id_ato_administrativo NUMBER(10,0) NOT NULL,
    id_atributo_ato NUMBER(5,0) NOT NULL,
    valor_detalhe_ato VARCHAR2(255) NOT NULL,
    FOREIGN KEY (id_ato_administrativo) REFERENCES AtoAdministrativo(id_ato_administrativo),
    FOREIGN KEY (id_atributo_ato) REFERENCES AtributoAto(id_atributo_ato)
);
```

---

### 📜 HistoricoAto
Registra o histórico de mudanças de status dos atos administrativos.

```sql
CREATE TABLE HistoricoAto (
    id_historico_ato NUMBER(10,0) PRIMARY KEY,
    id_ato_administrativo NUMBER(10,0) NOT NULL,
    id_status_ato NUMBER(5,0) NOT NULL,
    data_atualizacao_status DATE NOT NULL,
    descricao_atualizacao_status VARCHAR2(50) NOT NULL,
    FOREIGN KEY (id_ato_administrativo) REFERENCES AtoAdministrativo(id_ato_administrativo),
    FOREIGN KEY (id_status_ato) REFERENCES StatusAto(id_status_ato)
);
```

---

## 📌 Conclusão
🎯 **Todas as entidades foram revisadas, ajustadas e padronizadas!**  
✅ **Nomes singularizados** seguindo boas práticas de modelagem de dados.  
✅ **Atributos renomeados para evitar ambiguidades e facilitar consultas.**  
✅ **Tipos de dados otimizados para garantir eficiência e compatibilidade.**  

Agora, você pode usar esse modelo como referência para **criação do banco de dados no Oracle APEX**! 🚀  

Caso precise de alguma modificação ou queira gerar um **script SQL de inserção de dados fictícios para testes**, me avise! 😊
