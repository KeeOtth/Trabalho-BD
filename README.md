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
Para meu trabalho tomarei como parte da regra de negócio que cada médico pode ter no máximo 2 especialidades, que cada paciente pode ter no máximo 2 telefones, e que endereço
compreende rua, bairro, cidade, estado e UF.

O modelo lógico não normalizado é o seguinte:

![image]( https://github.com/KeeOtth/Trabalho-BD/assets/86529029/4adff60e-387e-437d-a1fd-538f85cf1097)

Agora normalizando:

![image](https://github.com/KeeOtth/Trabalho-BD/assets/86529029/45e5d653-e89c-4d1c-9cbd-d5ea3298dd06)

Para adequar o modelo lógico à 1FN eu abri os atributos que não eram atômicos, como era o caso de "endereço" e "telefone" em PACIENTE e "especialidades" em MEDICO,
criei uma tabela telefone para guardar os valores de telefones e coloquei nela uma chave de paciente já que "telefone" é multivalorado e a relação com paciente é de 1 para n.
ndereço foi separado em uma tabela com seus atributos, no caso endereço é um atributo composto, coloquei uma chave de endereço em paciente por ter uma relação de cardinalidade 1
para 1.

Para adequar o modelo à 2FN e 3FN separei os atributos de forma que não haja dependência transitiva nem parcial das chaves, note que eu usei a estratégia de inserir um id em cada
tabela como forma de garantir uma chave incrementável e unica, escolhi infringir a 3FN para o caso exclusivo de ENDEREÇO para tornar menos complexo o banco para o escopo do trabalho.
