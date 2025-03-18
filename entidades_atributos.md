# 📌 Estrutura Final das Entidades e Atributos

## 🗂️ AtosAdministrativos
Armazena os atos administrativos registrados no sistema.
- `id_ato` (PK)  
- `id_tipo_ato` *(FK para TipoAto)*  
- `id_unidade_jurisdicionada` *(FK para UnidadeJurisdicionada)*  
- `id_agente` *(FK para AgentesPublicos)*  
- `data_assinatura` *(Data de assinatura do ato no SEI)*  
- `data_vigencia` *(Data em que o ato começa a valer, podendo ser retroativa ou postergada)*  
- `data_cadastro` *(Data de registro no sistema para envio ao TCU)*  
- `id_status` *(FK para StatusAto)*  

---

## 🎭 TipoAto
Define a classificação dos atos administrativos.
- `id_tipo_ato` (PK)  
- `descricao` *(Nome do tipo de ato: Admissão, Aposentadoria, etc.)*  
- `sujeito_a_registro` *(CHAR(1) – 'S' para atos sujeitos a registro, 'N' para informativos do Art. 3º)*  

---

## 🏛️ AgentesPublicos
Armazena os servidores públicos envolvidos nos atos administrativos.
- `id_agente` (PK)  
- `nome` *(Nome completo do servidor)*  
- `cpf` *(Número de CPF único do servidor)*  
- `data_nascimento` *(Data de nascimento do servidor)*  
- `cargo` *(Cargo ocupado pelo servidor)*  
- `regime_trabalho` *(Exemplo: Estatutário, CLT, Militar)*  
- `id_unidade_lotacao` *(FK para UnidadeJurisdicionada - órgão onde o servidor está lotado)*  
- `tipo_vinculo` *(Exemplo: Servidor Público, Empregado Público, Militar, etc.)*  

---

## 🏢 UnidadeJurisdicionada
Registra os órgãos públicos responsáveis pelos atos administrativos.
- `id_unidade` (PK)  
- `nome_unidade` *(Nome do órgão público ou entidade vinculada)*  
- `sigla` *(Sigla do órgão para exibição compacta)*  
- `id_tipo_unidade` *(FK para TipoUnidade)*  

---

## 🏷️ TipoUnidade
Classifica os diferentes tipos de órgãos públicos.
- `id_tipo_unidade` (PK)  
- `descricao` *(Exemplo: Órgão Público, Autarquia, Empresa Pública, etc.)*  

---

## 🏷️ StatusAto
Define os status de um ato administrativo dentro do sistema.
- `id_status` (PK)  
- `descricao` *(Exemplo: Em Análise, Encaminhado ao TCU, Julgado Legal, Julgado Ilegal, etc.)*  

---

## 🔍 DetalhesAto
Armazena informações complementares de um ato administrativo.
- `id_detalhe` (PK)  
- `id_ato` *(FK para AtosAdministrativos)*  
- `id_atributo` *(FK para AtributosAto)*  
- `valor` *(Conteúdo textual ou numérico do detalhe do ato)*  

---

## 🏷️ AtributosAto
Define os atributos disponíveis para os detalhes de um ato.
- `id_atributo` (PK)  
- `nome_atributo` *(Nome do atributo: Fundamentação Legal, Regime Jurídico, etc.)*  
- `descricao` *(Explicação do que o atributo representa)*  
