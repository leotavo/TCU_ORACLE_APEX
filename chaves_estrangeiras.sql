ALTER TABLE UnidadeJurisdicionada 
ADD CONSTRAINT tipo_unidade FOREIGN KEY (id_tipo_unidade_jurisdicionada) 
REFERENCES TipoUnidadeJurisdicionada(id_tipo_unidade_jurisdicionada);

ALTER TABLE AgentePublico 
ADD CONSTRAINT agente_unidade FOREIGN KEY (id_unidade_jurisdicionada) 
REFERENCES UnidadeJurisdicionada(id_unidade_jurisdicionada);

ALTER TABLE AtoAdministrativo 
ADD CONSTRAINT ato_tipo FOREIGN KEY (id_tipo_ato) 
REFERENCES TipoAto(id_tipo_ato);

ALTER TABLE AtoAdministrativo 
ADD CONSTRAINT ato_unidade FOREIGN KEY (id_unidade_jurisdicionada) 
REFERENCES UnidadeJurisdicionada(id_unidade_jurisdicionada);

ALTER TABLE AtoAdministrativo 
ADD CONSTRAINT ato_agente FOREIGN KEY (id_agente_publico) 
REFERENCES AgentePublico(id_agente_publico);

ALTER TABLE AtoAdministrativo 
ADD CONSTRAINT ato_status FOREIGN KEY (id_status_ato) 
REFERENCES StatusAto(id_status_ato);

ALTER TABLE DetalheAto 
ADD CONSTRAINT detalhe_ato FOREIGN KEY (id_ato_administrativo) 
REFERENCES AtoAdministrativo(id_ato_administrativo);

ALTER TABLE DetalheAto 
ADD CONSTRAINT detalhe_atributo FOREIGN KEY (id_atributo_ato) 
REFERENCES AtributoAto(id_atributo_ato);

ALTER TABLE HistoricoAto 
ADD CONSTRAINT historico_ato FOREIGN KEY (id_ato_administrativo) 
REFERENCES AtoAdministrativo(id_ato_administrativo);

ALTER TABLE HistoricoAto 
ADD CONSTRAINT historico_status FOREIGN KEY (id_status_ato) 
REFERENCES StatusAto(id_status_ato);
