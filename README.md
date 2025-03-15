# Plano de Trabalho Refinado - Versão Corrigida

Esta versão aprimorada do Plano de Trabalho para o projeto Oracle APEX no TCU incorpora ajustes baseados na especificação do projeto, na documentação do Oracle APEX 18.2 e nas melhores práticas de gestão de projetos. O objetivo é garantir um alto nível de qualidade, desempenho e aderência aos requisitos técnicos e funcionais exigidos.

## 📆 Sábado - Estruturação e Configuração

### 1. Configuração do Ambiente
- 🔹 Criar workspace no Oracle APEX e testar acesso.
- 🔹 Configurar conexão com SQL Workshop.
- 🔹 Criar esquema inicial do banco de dados e verificar permissões.

### 2. Modelagem do Banco de Dados (SQL Workshop)
- 🔹 Criar tabela `orgaos_publicos` com colunas `id`, `nome`, `sigla`.
- 🔹 Criar tabela `servidores_publicos` com `id`, `cpf`, `nome`, `nascimento`, `orgao_id`.
- 🔹 Criar tabela `atos_administrativos` com `id`, `tipo_ato`, `servidor_id`, `data_ato`.
- 🔹 Criar relacionamentos (chaves estrangeiras) entre as tabelas.
- 🔹 Criar índices para otimizar buscas.
- 🔹 Implementar **constraints de integridade** (`NOT NULL`, `CHECK`, `FOREIGN KEY`).
- 🔹 Criar **triggers para auditoria** (registro de criação e alterações).
- 🔹 Configurar **controle de permissões de acesso**.
- 🔹 Testar inserção de dados brutos via SQL.

### 3. Implementação dos CRUDs (App Builder)
- 🔹 Criar formulário de cadastro, edição e exclusão para Órgãos Públicos.
- 🔹 Criar formulário de cadastro, edição e exclusão para Servidores Públicos.
- 🔹 Criar formulário de cadastro, edição e exclusão para Atos Administrativos.
- 🔹 Adicionar dropdowns para seleção de órgãos e servidores.
- 🔹 Implementar **paginação nas listagens**.
- 🔹 Adicionar **mensagens de confirmação antes da exclusão**.
- 🔹 Implementar **Dynamic Actions para melhor experiência do usuário**.

---

## 📆 Domingo - Funcionalidades Avançadas

### 1. Implementação de Consultas e Filtros
- 🔹 Criar telas de busca para servidores, órgãos e atos administrativos.
- 🔹 Adicionar filtros por nome, órgão, tipo de ato e período de data.
- 🔹 Criar separação de atos sujeitos e não sujeitos a registro.

### 2. Relatórios e Exportações
- 🔹 Criar relatório de servidores por órgão público.
- 🔹 Criar relatório de servidores por tipo de ato administrativo.
- 🔹 Criar relatório geral com filtros aplicáveis.
- 🔹 Implementar exportação para PDF e Excel.
- 🔹 Criar **modelos personalizados para relatórios**.
- 🔹 Adicionar **formatação condicional nos relatórios**.
- 🔹 Permitir **personalização de colunas antes da exportação**.

### 3. Implementação de Gráficos (APEX Charting)
- 🔹 Criar gráfico de barras: Total de servidores por tipo de ato.
- 🔹 Criar gráfico de pizza: Proporção de atos sujeitos e não sujeitos a registro.
- 🔹 Criar gráfico de linha: Evolução dos atos ao longo dos anos.
- 🔹 Garantir **responsividade para dispositivos móveis**.
- 🔹 Adicionar **legendas e tooltips interativos**.
- 🔹 Validar **dados antes da renderização dos gráficos**.

---

## 📆 Segunda-feira - Integração e Ajustes

### 1. Revisão Completa do CRUD
- 🔹 Testar todos os CRUDs com diferentes usuários.
- 🔹 Revisar mensagens de erro e feedback ao usuário.
- 🔹 Ajustar botões e navegação entre telas.

### 2. Testes de Performance
- 🔹 Verificar tempo de resposta das consultas SQL.
- 🔹 Criar índices adicionais se necessário.
- 🔹 Otimizar queries complexas para evitar lentidão.
- 🔹 Testar carga com **dados volumosos (mínimo 500 registros por tabela)**.
- 🔹 Usar **Explain Plan para análise de desempenho das consultas**.

### 3. Preparação para Apresentação
- 🔹 Criar um passo a passo do sistema.
- 🔹 Criar roteiro para demonstração.
- 🔹 Simular perguntas e respostas da banca avaliadora.

---

## 📆 Terça-feira - Revisão Final e Documentação

### 1. Revisão Técnica e Testes de Usuário
- 🔹 Criar usuário fictício e testar todos os CRUDs.
- 🔹 Testar consulta de servidores por nome e órgão.
- 🔹 Testar consulta de atos administrativos com filtros.
- 🔹 Testar exportação de relatórios em diferentes formatos.
- 🔹 Testar gráficos com múltiplas configurações.

### 2. Refinamento da Apresentação
- 🔹 Criar resumo técnico do projeto.
- 🔹 Definir exemplos práticos para a apresentação.
- 🔹 Ensaiar a apresentação completa.

---

## 📆 Quarta-feira - Últimos Ajustes e Descanso

### 1. Validação Final
- 🔹 Executar um último teste geral em todas as funções.
- 🔹 Verificar se todas as telas estão acessíveis.
- 🔹 Conferir dados de exemplo para a apresentação.

### 2. Treino para Apresentação
- 🔹 Ensaiar respostas para possíveis perguntas.
- 🔹 Ajustar exemplos práticos na apresentação.

### 3. Últimos Ajustes e Backup Final
- 🔹 Salvar última versão do projeto.
- 🔹 Confirmar que o sistema está pronto para avaliação.
