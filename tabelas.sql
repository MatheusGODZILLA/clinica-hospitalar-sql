CREATE TABLE Usuario (
    IDUsuario SERIAL PRIMARY KEY,
    Nome TEXT NOT NULL,
    Email TEXT NOT NULL,
    Senha TEXT NOT NULL,
    Conta INT NOT NULL
);

CREATE TABLE Medico (
    IDMedico SERIAL PRIMARY KEY,
    Especialidade TEXT NOT NULL,
    CRM TEXT NOT NULL,
    Nome TEXT NOT NULL,
    AvaliacaoMedica TEXT
);

CREATE TABLE Paciente (
    IDPaciente SERIAL PRIMARY KEY,
    Nome TEXT NOT NULL,
    DataNascimento DATE NOT NULL,
    Endereco TEXT, 
    Email TEXT,
    Telefone TEXT NOT NULL,
    TipoSanguineo TEXT NOT NULL
);

CREATE TABLE Clinica (
    IDClinica SERIAL PRIMARY KEY,
    Localizacao TEXT NOT NULL,
    AvaliacaoClinica TEXT
);

CREATE TABLE Consulta (
    IDConsulta SERIAL PRIMARY KEY,
    Motivo TEXT NOT NULL,
    NomeConsulta TEXT NOT NULL,
    Valor MONEY NOT NULL,
    Retorno TIMESTAMP
);

CREATE TABLE Exame (
    IDExame SERIAL PRIMARY KEY,
    TipoExame TEXT NOT NULL,
    DescricaoExame TEXT NOT NULL,
    CustoExame MONEY NOT NULL
);

CREATE TABLE Cirurgia (
    IDCirurgia SERIAL PRIMARY KEY,
    NomeCirurgia TEXT NOT NULL,
    DescricaoCirurgia TEXT NOT NULL,
    CustoCirurgia MONEY NOT NULL
);

CREATE TABLE HorarioDisponivel (
    IDHorarioDisponivel SERIAL PRIMARY KEY,
    DataHora TIMESTAMP,
    IDClinica INT
);

CREATE TABLE Notificacao (
    IDNotificacao SERIAL PRIMARY KEY,
    MensagemNotificacao TEXT,
    DataHoraEnvio TIMESTAMP,
    IDPaciente INT
);

CREATE TABLE EspecialidadeMedica (
    IDEspecialidade SERIAL PRIMARY KEY,
    IDMedico INT REFERENCES Medico (IDMedico),
    Tipo TEXT NOT NULL 
);

CREATE TABLE HistoricoConsulta (
    IDHistorico SERIAL PRIMARY KEY,
    IDPaciente INT REFERENCES Paciente (IDPaciente),
    IDMedico INT REFERENCES Medico (IDMedico),
    DataHoraConsulta TIMESTAMP NOT NULL,
    Diagnostico TEXT NOT NULL,
    PrescricaoMedica TEXT NOT NULL
);

CREATE TABLE AvaliacaoMedica (
    IDAvaliacao SERIAL PRIMARY KEY,
    IDMedico INT REFERENCES Medico (IDMedico),
    IDPaciente INT REFERENCES Paciente (IDPaciente),
    Comentario TEXT
);

CREATE TABLE AgendamentoConsulta (
    IDAgendamentoConsulta SERIAL PRIMARY KEY,
    IDPaciente INT REFERENCES Paciente (IDPaciente),
    IDMedico INT REFERENCES Medico (IDMedico),
    IDConsulta INT REFERENCES Consulta (IDConsulta),
    IDExame INT REFERENCES Exame (IDExame),
    IDCirurgia INT REFERENCES Cirurgia (IDCirurgia),
    DataHoraAgendamento TIMESTAMP NOT NULL
);

CREATE TABLE AgendamentoExame (
    IDAgendamentoExame SERIAL PRIMARY KEY,
    IDPaciente INT REFERENCES Paciente (IDPaciente),
    IDMedico INT REFERENCES Medico (IDMedico), 
    IDClinica INT REFERENCES Clinica (IDClinica), 
    IDExame INT REFERENCES Exame (IDExame),
    DataHoraAgendamento TIMESTAMP NOT NULL
);

CREATE TABLE AgendamentoCirurgia (
    IDAgendamentoCirurgia SERIAL PRIMARY KEY,
    IDPaciente INT REFERENCES Paciente (IDPaciente),
    IDMedico INT REFERENCES Medico (IDMedico),
    IDClinica INT REFERENCES Clinica (IDClinica),
    IDCirurgia INT REFERENCES Cirurgia (IDCirurgia),
    DataHoraAgendamento TIMESTAMP NOT NULL
);

CREATE TABLE MedicoEspecialidade (
    IDMedico INT REFERENCES Medico (IDMedico),
    IDEspecialidade INT REFERENCES EspecialidadeMedica (IDEspecialidade),
    PRIMARY KEY (IDMedico, IDEspecialidade)
);
