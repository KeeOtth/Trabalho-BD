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
    constraint fk_endereco_paciente foreign key(id_endereco) references ENDERECO(id_endereco),
);

CREATE TABLE TELEFONE(
    id_tel int auto_increment primary key,
    id_paciente int,
    tel1 varchar(11),
    tel2 varchar(11),
    constraint fk_paciente_telefone foreign key(id_paciente) references PACIENTE
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


--INSERÇÕES:

INSERT INTO ENDERECO (rua, bairro, cidade, estado, uf)
VALUES
    ('Rua A', 'Bairro X', 'Cidade 1', 'Estado 1', 'E1'),
    ('Rua B', 'Bairro Y', 'Cidade 2', 'Estado 2', 'E2'),
    ('Rua C', 'Bairro Z', 'Cidade 3', 'Estado 3', 'E3'),
    ('Rua D', 'Bairro W', 'Cidade 4', 'Estado 4', 'E4'),
    ('Rua E', 'Bairro V', 'Cidade 5', 'Estado 5', 'E5'),
    ('Rua F', 'Bairro U', 'Cidade 6', 'Estado 6', 'E6'),
    ('Rua G', 'Bairro T', 'Cidade 7', 'Estado 7', 'E7'),
    ('Rua H', 'Bairro S', 'Cidade 8', 'Estado 8', 'E8'),
    ('Rua I', 'Bairro R', 'Cidade 9', 'Estado 9', 'E9'),
    ('Rua J', 'Bairro Q', 'Cidade 10', 'Estado 10', 'E0');

INSERT INTO ESPECIALIDADES (esp1, esp2)
VALUES
    ('Especialidade 1A', 'Especialidade 1B'),
    ('Especialidade 2A', 'Especialidade 2B'),
    ('Especialidade 3A', 'Especialidade 3B'),
    ('Especialidade 4A', 'Especialidade 4B'),
    ('Especialidade 5A', 'Especialidade 5B'),
    ('Especialidade 6A', 'Especialidade 6B'),
    ('Especialidade 7A', 'Especialidade 7B'),
    ('Especialidade 8A', 'Especialidade 8B'),
    ('Especialidade 9A', 'Especialidade 9B'),
    ('Especialidade 10A', 'Especialidade 10B');

INSERT INTO EXAME (nome, observacoes)
VALUES
    ('Exame 1', 'Observações para o Exame 1'),
    ('Exame 2', 'Observações para o Exame 2'),
    ('Exame 3', 'Observações para o Exame 3'),
    ('Exame 4', 'Observações para o Exame 4'),
    ('Exame 5', 'Observações para o Exame 5'),
    ('Exame 6', 'Observações para o Exame 6'),
    ('Exame 7', 'Observações para o Exame 7'),
    ('Exame 8', 'Observações para o Exame 8'),
    ('Exame 9', 'Observações para o Exame 9'),
    ('Exame 10', 'Observações para o Exame 10');

INSERT INTO MEDICAMENTO (nome)
VALUES
    ('Medicamento 1'),
    ('Medicamento 2'),
    ('Medicamento 3'),
    ('Medicamento 4'),
    ('Medicamento 5'),
    ('Medicamento 6'),
    ('Medicamento 7'),
    ('Medicamento 8'),
    ('Medicamento 9'),
    ('Medicamento 10');

INSERT INTO MEDICO (nome, data_nascimento, crm)
VALUES
    ('Dr. Maria Silva', '1980-05-15', 'CRM12345'),
    ('Dr. José Santos', '1975-09-20', 'CRM23456'),
    ('Dra. Ana Oliveira', '1988-03-10', 'CRM34567'),
    ('Dr. Pedro Rodrigues', '1972-07-25', 'CRM45678'),
    ('Dra. Carolina Fernandes', '1990-01-05', 'CRM56789'),
    ('Dr. Luiz Pereira', '1985-12-12', 'CRM67890'),
    ('Dra. Sandra Costa', '1977-11-08', 'CRM78901'),
    ('Dr. Daniel Martins', '1983-06-30', 'CRM89012'),
    ('Dra. Paula Sousa', '1979-04-18', 'CRM90123'),
    ('Dr. André Almeida', '1982-02-28', 'CRM01234');


INSERT INTO MEDICO_ESPECIALIDADE (id_medico, id_esp)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

INSERT INTO PACIENTE (id_endereco, cpf, nome, data_nascimento, numero_plano)
VALUES
    (1, '12345678901', 'João da Silva', '1990-05-15', 12345),
    (2, '23456789012', 'Maria Santos', '1985-09-20', 23456),
    (3, '34567890123', 'Carlos Oliveira', '1995-03-10', 34567),
    (4, '45678901234', 'Ana Rodrigues', '1980-07-25', 45678),
    (5, '56789012345', 'Pedro Fernandes', '2000-01-05', 56789),
    (6, '67890123456', 'Lúcia Pereira', '1975-12-12', 67890),
    (7, '78901234567', 'Sandra Costa', '1992-11-08', 78901),
    (8, '89012345678', 'Daniel Martins', '1988-06-30', 89012),
    (9, '90123456789', 'Paula Sousa', '1997-04-18', 90123),
    (10, '01234567890', 'André Almeida', '1983-02-28', 01234);

    
INSERT INTO TELEFONE (id_paciente, tel1, tel2)
VALUES
    (1, '11111111111', '22222222222'),
    (2, '33333333333', '44444444444'),
    (3, '55555555555', '66666666666'),
    (4, '77777777777', '88888888888'),
    (5, '99999999999', '00000000000'),
    (6, '11111111111', '22222222222'),
    (7, '33333333333', '44444444444'),
    (8, '55555555555', '66666666666'),
    (9, '77777777777', '88888888888'),
    (10, '99999999999', '00000000000');


INSERT INTO CONSULTA (id_paciente, id_medico, data_hora)
VALUES
    (1, 1, '2023-10-04 09:00:00'),
    (2, 2, '2023-10-05 10:00:00'),
    (3, 3, '2023-10-06 11:00:00'),
    (4, 4, '2023-10-07 12:00:00'),
    (5, 5, '2023-10-08 13:00:00'),
    (6, 6, '2023-10-09 14:00:00'),
    (7, 7, '2023-10-10 15:00:00'),
    (8, 8, '2023-10-11 16:00:00'),
    (9, 9, '2023-10-12 17:00:00'),
    (10, 10, '2023-10-13 18:00:00');

INSERT INTO EXAME_CONSULTA (id_exame, id_consulta, observacoes)
VALUES
    (1, 1, 'Observações para o Exame 1 na Consulta 1'),
    (2, 2, 'Observações para o Exame 2 na Consulta 2'),
    (3, 3, 'Observações para o Exame 3 na Consulta 3'),
    (4, 4, 'Observações para o Exame 4 na Consulta 4'),
    (5, 5, 'Observações para o Exame 5 na Consulta 5'),
    (6, 6, 'Observações para o Exame 6 na Consulta 6'),
    (7, 7, 'Observações para o Exame 7 na Consulta 7'),
    (8, 8, 'Observações para o Exame 8 na Consulta 8'),
    (9, 9, 'Observações para o Exame 9 na Consulta 9'),
    (10, 10, 'Observações para o Exame 10 na Consulta 10');

INSERT INTO MEDICAMENTO_CONSULTA (id_medicamento, id_consulta, dosagem, posologia)
VALUES
    (1, 1, '10 mg', 'Tomar 1 comprimido de 10 mg a cada 6 horas'),
    (2, 2, '20 mg', 'Tomar 1 comprimido de 20 mg a cada 8 horas'),
    (3, 3, '30 mg', 'Tomar 1 comprimido de 30 mg a cada 12 horas'),
    (4, 4, '40 mg', 'Tomar 1 comprimido de 40 mg a cada 24 horas'),
    (5, 5, '50 mg', 'Tomar 1 comprimido de 50 mg a cada 6 horas'),
    (6, 6, '60 mg', 'Tomar 1 comprimido de 60 mg a cada 8 horas'),
    (7, 7, '70 mg', 'Tomar 1 comprimido de 70 mg a cada 12 horas'),
    (8, 8, '80 mg', 'Tomar 1 comprimido de 80 mg a cada 24 horas'),
    (9, 9, '90 mg', 'Tomar 1 comprimido de 90 mg a cada 6 horas'),
    (10, 10, '100 mg', 'Tomar 1 comprimido de 100 mg a cada 8 horas');
