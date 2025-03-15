# 📚 Declaração Completa de Escopo – Projeto Oracle APEX TCU

## 🎯 Objetivo do Projeto
Desenvolver um sistema para registro, consulta e manutenção das informações referentes à admissão, aposentadoria e pensão de pessoal vinculado à administração pública federal, controlando atos previstos nos artigos 2º e 3º da IN Nº 55, de 24/10/2007.

## 📌 Requisitos Funcionais
- CRUD completo (consulta, cadastro, alteração e exclusão)
- Histórico detalhado dos atos por servidor e órgão público, com datas de ocorrência
- Separação visual (telas ou filtros específicos) dos atos sujeitos e não sujeitos a registro
- Relatório com filtros por órgão público, tipo de ato e intervalo de datas
- Gráfico gerencial em barra totalizando a quantidade de servidores por cada tipo de ato
- Gráfico gerencial em pizza informando proporção de atos sujeitos e não sujeitos a registro
- Gráfico gerencial em linha mostrando a evolução anual dos atos

## 🛠️ Requisitos Técnicos
- Implementação do modelo de dados normalizado (3FN)
- Inserção de dados fictícios realistas para testes
- Remoção das tabelas e objetos irrelevantes no banco de dados após conclusão

## 🚧 Requisitos Não Funcionais
- Desenvolvimento individual no ambiente Oracle APEX versão 18.2 disponibilizado pelo TCU
- Compatibilidade com navegadores: Google Chrome, Mozilla Firefox, Apple Safari, Microsoft Edge
- Prazo máximo para entrega: 20 de março até meio-dia
- Desempenho aceitável para aplicações do tipo proposto (consultas e relatórios rápidos)
- Limitação do espaço de trabalho aprovado pelo TCU: 10MB
- Interface intuitiva e amigável (boa usabilidade)

## 🚫 Exclusões do Escopo
- Integrações externas ou uso de APIs
- Funcionalidades avançadas de segurança não nativas do Oracle APEX

## 🔍 Critérios de Aceitação e Validação do Projeto

### 🧪 Processo de Testes e Validação
A aplicação será testada diretamente no ambiente Oracle APEX do TCU, com dados fictícios, abrangendo operações práticas como inserção, alteração e exclusão de dados via interface. Será avaliada a correta execução de todas as operações definidas.

Além disso, será verificada a limpeza do banco de dados, garantindo que permaneçam apenas objetos e tabelas essenciais, assegurando a clareza e legibilidade durante a avaliação.

### ✅ Quadro Resumo: Requisitos vs. Atendimento no Projeto
| Requisito identificado nas técnicas de análise | Como o projeto irá atender |
|-----------------------------------------------|----------------------------|
| CRUD completo                                 | Telas de cadastro, consulta, alteração e remoção totalmente funcionais |
| Histórico detalhado com datas                 | Telas específicas para consulta do histórico dos atos |
| Separação visual de atos sujeitos/não sujeitos| Filtros ou telas específicas separando claramente atos |
| Relatórios filtráveis por órgão, ato e datas  | Relatórios com filtros funcionais, exportáveis (PDF/Excel) |
| Gráficos (barra, pizza, linha)                | Gráficos interativos com dados corretos extraídos do banco |
| Modelo de dados (3FN)                         | Estrutura validada e normalizada no SQL Workshop |
| Dados fictícios para testes                   | Inserção prévia de dados fictícios para simulação completa |
| Limpeza do banco final                        | Exclusão de tabelas e objetos irrelevantes pós-desenvolvimento |
| Compatibilidade navegadores                   | Teste e validação completa nos navegadores definidos |
| Desempenho aceitável                          | Respostas rápidas e adequadas em todas as consultas e relatórios |
| Validações básicas e integridade dos dados    | Implementação de validações de campos obrigatórios, formatos corretos de datas e CPF |
| Usabilidade da interface                      | Interface clara, intuitiva e amigável validada durante testes práticos |

## 🔧 Estrutura Analítica do Projeto (EAP)

### 1. Configuração do Ambiente
- 1.1 Solicitação e configuração do espaço de trabalho no ambiente do TCU
- 1.2 Validação e teste de acesso ao Oracle APEX

### 2. Modelagem de Dados
- 2.1 Definição das tabelas essenciais
- 2.2 Criação dos relacionamentos e restrições (normalização 3FN)

### 3. Desenvolvimento dos CRUDs
- 3.1 CRUD para órgãos públicos
- 3.2 CRUD para servidores públicos
- 3.3 CRUD para atos administrativos

### 4. Desenvolvimento dos Relatórios
- 4.1 Relatório com filtros por órgão público, tipo de ato e intervalo de datas
- 4.2 Exportação dos relatórios em PDF e Excel

### 5. Desenvolvimento dos Gráficos Gerenciais
- 5.1 Gráfico de barras (quantidade de servidores por tipo de ato)
- 5.2 Gráfico de pizza (proporção atos sujeitos e não sujeitos)
- 5.3 Gráfico de linha (evolução anual dos atos)

### 6. Testes e Validações
- 6.1 Inserção de dados fictícios para testes
- 6.2 Testes funcionais das operações CRUD
- 6.3 Testes dos relatórios e gráficos
- 6.4 Validação de desempenho (tempo de resposta)
- 6.2 Validação de usabilidade e responsividade

### 7. Finalização e Entrega
- 7.1 Remoção de objetos irrelevantes no banco de dados
- 7.2 Disponibilização da aplicação para avaliação direta no ambiente TCU
- 7.3 Preparação da apresentação do projeto para entrevista técnica

---

Este documento detalha de forma abrangente e clara todo o escopo, limitações e critérios de aceitação e testes para garantir total aderência à especificação original e sucesso na entrega do projeto.

