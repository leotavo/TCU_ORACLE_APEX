# 📚 Declaração Completa de Escopo – Projeto Oracle APEX TCU

## 🎯 Objetivo do Projeto
Desenvolver um sistema para registro, consulta e manutenção das informações referentes à admissão, aposentadoria e pensão de pessoal vinculado à administração pública federal, controlando atos previstos nos artigos 2º e 3º da IN Nº 55/2007.

## 🧩 Requisitos Funcionais
- CRUD completo: consulta, cadastro, alteração e exclusão
- Histórico detalhado dos atos por servidor e órgão, com datas
- Separação visual (telas ou filtros específicos) dos atos sujeitos e não sujeitos a registro
- Relatório com filtros: órgão público, tipo de ato e período de datas
- Gráficos gerenciais: barras (quantidade de servidores por tipo de ato), pizza (proporção de atos sujeitos e não sujeitos), linha (evolução anual dos atos)

## ⚙️ Requisitos Técnicos
- Modelo de dados relacional normalizado (até a 3FN)
- Dados fictícios realistas para testes práticos
- Remoção final das tabelas e objetos não relevantes do banco de dados

## 🚧 Requisitos Não Funcionais
- Desenvolvimento individual na plataforma Oracle APEX versão 18.2 (ambiente do TCU)
- Compatibilidade com navegadores: Google Chrome, Mozilla Firefox, Apple Safari, Microsoft Edge
- Prazo de entrega: até meio-dia do dia 20 de março
- Desempenho aceitável e adequado para consultas, geração de relatórios e gráficos para este tipo de aplicação
- Espaço de Trabalho limitado a 10MB aprovado pelo TCU
- Validação básica dos dados inseridos (campos obrigatórios, formato de datas, CPF)
- Interface intuitiva e amigável (boa usabilidade)

## 🚫 Exclusões do Escopo
- Não serão desenvolvidas integrações externas ou serviços de autenticação personalizados
- Não serão implementadas funcionalidades avançadas de segurança além das oferecidas pelo Oracle APEX

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
| Validações básicas                            | Implementação de validações de campos obrigatórios, formatos corretos de datas e CPF |
| Usabilidade da interface                      | Interface clara, intuitiva e amigável validada durante testes práticos |

---

Este documento detalha de forma abrangente e clara todo o escopo, limitações e critérios de aceitação e testes para garantir total aderência à especificação original e sucesso na entrega do projeto.

