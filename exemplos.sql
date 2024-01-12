-- Pacientes
INSERT INTO Paciente (Nome, DataNascimento, Endereco, Email, Telefone, TipoSanguineo) VALUES ('João Silva', '1990-05-15', 'Rua A, 123', 'joao@example.com', '+55 123 456 789', 'A+');
INSERT INTO Paciente (Nome, DataNascimento, Endereco, Email, Telefone, TipoSanguineo) VALUES ('João Silva', '1990-05-15', 'Rua A, 123', 'joao@example.com', '+55 123 456 789', 'A+');
INSERT INTO Paciente (Nome, DataNascimento, Endereco, Email, Telefone, TipoSanguineo) VALUES ('Carlos Santos', '1978-03-12', 'Rua C, 789', 'carlos@example.com', '+55 543 210 987', 'O+');
INSERT INTO Paciente (Nome, DataNascimento, Endereco, Email, Telefone, TipoSanguineo) VALUES ('Ana Lima', '1993-07-28', 'Rua D, 1011', 'ana@example.com', '+55 111 222 333', 'AB-');

-- Médicos
INSERT INTO Medico (Especialidade, CRM, Nome, AvaliacaoMedica) VALUES ('Cardiologia', 'CRM12345', 'Dr. Ana Souza', 'Excelente profissional.');
INSERT INTO Medico (Especialidade, CRM, Nome, AvaliacaoMedica) VALUES ('Dermatologia', 'CRM56789', 'Dra. Carlos Silva', 'Ótimo atendimento e especialista em dermatologia.');

-- Consultas
INSERT INTO Consulta (Motivo, NomeConsulta, Valor, Retorno) VALUES ('Dor de Cabeça', 'Neurologia', 120.00, NULL);
INSERT INTO Consulta (Motivo, NomeConsulta, Valor, Retorno) VALUES ('Exame de Rotina', 'Consulta Anual', 150.00, NULL);
INSERT INTO Consulta (Motivo, NomeConsulta, Valor, Retorno) VALUES ('Problemas Respiratórios', 'Pneumologia', 130.00, NULL);
INSERT INTO Consulta (Motivo, NomeConsulta, Valor, Retorno) VALUES ('Check-up Cardiológico', 'Cardiologia', 180.00, NULL);
INSERT INTO Consulta (Motivo, NomeConsulta, Valor, Retorno) VALUES ('Consulta Geral', 'Rotina Médica', 160.00, NULL);

-- Agendamento de Consultas
INSERT INTO AgendamentoConsulta (IDPaciente, IDMedico, IDConsulta, DataHoraAgendamento) VALUES (1, 1, 1, '2024-02-01 10:00:00');
INSERT INTO AgendamentoConsulta (IDPaciente, IDMedico, IDConsulta, DataHoraAgendamento) VALUES (2, 2, 2, '2024-02-05 14:30:00');
INSERT INTO AgendamentoConsulta (IDPaciente, IDMedico, IDConsulta, DataHoraAgendamento) VALUES (3, 1, 3, '2024-02-10 09:15:00');