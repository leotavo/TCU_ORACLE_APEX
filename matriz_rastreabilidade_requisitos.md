# 🔗 Matriz de Rastreabilidade dos Requisitos – Projeto Oracle APEX TCU

| ID  | Requisito                                     | Tipo          | Como será atendido                                      | Como será validado                                 |
|-----|-----------------------------------------------|---------------|---------------------------------------------------------|----------------------------------------------------|
| R1  | CRUD completo                                 | Funcional     | Telas completas para cadastro, consulta, alteração e exclusão.           | Teste prático das operações CRUD                   |
| R2  | Histórico detalhado com datas                 | Funcional     | Interface específica para consultar atos por servidor e órgão com datas. | Avaliação visual prática do histórico              |
| R3  | Separação visual de atos sujeitos/não sujeitos| Funcional     | Filtros e telas separadas para cada tipo de ato.                         | Validação visual dos filtros/telas                 |
| R3  | Relatório com filtros                         | Funcional     | Relatórios com filtros funcionais, exportáveis para PDF e Excel.         | Teste prático e visual dos relatórios filtrados    |
| R4  | Gráficos gerenciais (barra, pizza, linha)     | Funcional     | Gráficos interativos com informações extraídas diretamente do banco.     | Validação visual prática dos gráficos              |
| R5  | Modelo de dados normalizado (3FN)             | Técnico       | Estrutura do banco de dados criada no SQL Workshop.                       | Revisão técnica e aprovação do modelo implementado |
| R6  | Inserção de dados fictícios                   | Técnico       | Inserção prévia de dados fictícios realistas via scripts SQL.            | Conferência direta no banco de dados               |
| R5  | Remoção final de objetos irrelevantes         | Técnico       | Exclusão de objetos não essenciais após desenvolvimento.                 | Avaliação visual final do banco de dados           |
| R6  | Compatibilidade com navegadores               | Não Funcional | Desenvolvimento validado nos navegadores recomendados.                   | Testes nos navegadores especificados               |
| R7  | Desempenho aceitável                          | Não Funcional | Otimização de consultas e relatórios para respostas rápidas.             | Avaliação prática do desempenho                    |
| R6  | Validações básicas e integridade dos dados    | Não Funcional | Implementação de validações obrigatórias (campos obrigatórios, CPF válido, formatos corretos). | Testes práticos nas operações de entrada de dados |
| R8  | Usabilidade e interface intuitiva             | Não Funcional | Interface projetada com boas práticas de usabilidade.                    | Testes práticos de usabilidade e responsividade    |
| R7  | Compatibilidade com ambiente do TCU           | Não Funcional | Desenvolvimento integral no ambiente Oracle APEX 18.2 fornecido pelo TCU. | Verificação de implementação e acessibilidade no ambiente oficial do TCU |
| R8  | Compatibilidade com navegadores               | Não Funcional | Testes nos navegadores Chrome, Firefox, Safari e Edge.                   | Testes práticos nos navegadores especificados      |
| R9  | Desempenho aceitável                          | Não Funcional | Implementação com tempo de resposta rápido para consultas, gráficos e relatórios. | Avaliação prática e técnica dos tempos de resposta |
| R9  | Interface intuitiva e amigável                | Não Funcional | Desenvolvimento seguindo melhores práticas de usabilidade e design intuitivo. | Validação prática durante testes                   |

