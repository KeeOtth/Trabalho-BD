--Comando para criar o banco:

CREATE DATABASE consultorio

--Commandos para criar as tabelas:

CREATE TABLE ENDERECO(
    id_endereco int auto_increment PRIMARY KEY,
    rua varchar(255),
    bairro varchar(255),
    cidade varchar(255),
    estado varchar(255),
    uf varchar(2)
);

CREATE TABLE ESPECIALIDADES(
    id_esp int auto_increment primary key,
    esp1 varchar(255),
    esp2 varchar(255)
);

CREATE TABLE EXAME(
    id_exame int auto_increment primary key,
    nome varchar(255),
    observacoes varchar(255)
);

CREATE TABLE MEDICAMENTO(
    id_medicamento int auto_increment primary key,
    nome varchar(255)
);

CREATE TABLE MEDICO(
    id_medico int auto_increment primary key,
    nome varchar(255),
    data_nascimento date,
    crm varchar(15)
);

CREATE TABLE MEDICO_ESPECIALIDADE(
    id_me int auto_increment primary key,
    id_medico int,
    id_esp int, 
    constraint fk_medico_especialidade_medico foreign key(id_medico) references MEDICO(id_medico),
    constraint fk_especialidade foreign key(id_esp) references ESPECIALIDADES(id_esp)
);

CREATE TABLE PACIENTE(
    id_paciente int auto_increment primary key,
    id_endereco int,
    cpf varchar(11),	
    nome varchar(255),
    data_nascimento date,
    numero_plano int,
    constraint fk_endereco_paciente foreign key(id_endereco) references ENDERECO(id_endereco)
);

CREATE TABLE TELEFONE(
    id_tel int auto_increment primary key,
    id_paciente int,
    tel1 varchar(11),
    tel2 varchar(11),
    constraint fk_paciente_telefone foreign key(id_paciente) references PACIENTE(id_paciente)
 );

CREATE TABLE CONSULTA(
    id_consulta int auto_increment primary key,
    id_paciente int,
    id_medico int,
    data_hora datetime
);

CREATE TABLE EXAME_CONSULTA(
    id_ex_cons int auto_increment primary key,
    id_exame int,
    id_consulta int,
    observacoes varchar(255),
    constraint fk_exame_exameconsulta foreign key(id_exame) references EXAME(id_exame),
    constraint fk_consulta_exameconsulta foreign key(id_consulta) references CONSULTA(id_consulta)
);

CREATE TABLE MEDICAMENTO_CONSULTA(
    id_med_con int auto_increment primary key,
    id_medicamento int,
    id_consulta int,
    dosagem varchar(50),
    posologia varchar(255),
    constraint fk_medicamento_medicamentoconsulta foreign key(id_medicamento) references MEDICAMENTO(id_medicamento),
    constraint fk_consulta_medicamentoconsulta foreign key(id_consulta) references CONSULTA(id_consulta)
);
