# Trabalho-BD
Repositório para armazenar o trabalho valendo nota da AB2 da disciplina de Banco de Dados ministrada pela professora Drª Cristina Tenório.

![image](https://github.com/KeeOtth/Trabalho-BD/assets/86529029/9460bb6c-0930-43f1-8308-a3f072ee78f9)

O diagrama ER acima descreve o modelo de negócio que eu escolhi para a realização deste trabalho.

A regra de negócio que usei para criar o modelo será decrita a seguir:

O modelo simula um consultório com medicos que realizam consultas atendendo pacientes, sobre os médicos armazenamos nome, CRM, data de nascimento e sua especialidade,
sobre paciente armazenamos nome, data de nascimento, cpf, endereço, nº plano de saúde, e telefone, sobre a consulta armazenamos o médico e o paciente que participaram da mesma
assim como a data e hora da realização da consulta.
Numa consulta pode-se prescrever medicamentos e solicitar exames para o paciente, sobre medicamento nos interessa guardar o nome, a dosagem e a posologia, sobre os exames nos
interessa guardar o nome, e observações sobre o exame, como condições a serem atendidas por exemplo.

O modelo lógico não normalizado é o seguinte:
