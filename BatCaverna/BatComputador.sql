CREATE TABLE Veiculo (
    CodVeiculo TEXT,
    Tipo TEXT,
    Nome TEXT,
    PRIMARY KEY (CodVeiculo)
);


CREATE TABLE Donos_dos_Veiculos (
    CodVeiculo TEXT,
    CodDono TEXT,
    PRIMARY KEY (CodDono, CodVeiculo),
    FOREIGN KEY (CodVeiculo) REFERENCES Veiculo(CodVeiculo),
    FOREIGN KEY (CodDono) REFERENCES SuperHeroi(CodSuperHeroi),
    FOREIGN KEY (CodDono) REFERENCES SuperVilao(CodSuperVilao)
);


CREATE TABLE SuperHeroi (
    CodSuperHeroi TEXT,
    Nome TEXT,
    Fraqueza TEXT,
    PRIMARY KEY (CodSuperHeroi),
    FOREIGN KEY (Fraqueza) REFERENCES BatEstoque(CodItem)
);

CREATE TABLE SuperVilao (
    CodSuperVilao TEXT,
    Nome TEXT,
    Status TEXT,
    PRIMARY KEY (CodSuperVilao)
);

CREATE TABLE Rivalidade (
    CodSuperHeroi TEXT,
    CodSuperVilao TEXT,
    PRIMARY KEY (CodSuperHeroi, CodSuperVilao),
    FOREIGN KEY (CodSuperHeroi) REFERENCES SuperHeroi(CodSuperHeroi),
    FOREIGN KEY (CodSuperVilao) REFERENCES SuperVilao(CodSuperVilao)
);

CREATE TABLE Comodo_Batcaverna (
    CodComodo TEXT,
    Nome TEXT,
    Alarme TEXT,
    PRIMARY KEY (CodComodo)
);

CREATE TABLE BatEstoque (
    CodItem TEXT,
    Descricao TEXT,
    Status TEXT,
    CodComodo TEXT,
    PRIMARY KEY (CodItem),
    FOREIGN KEY (CodComodo) REFERENCES Comodo_Batcaverna(CodComodo)
);


CREATE TABLE Alfred (
    CodInformacao TEXT,
    Informacao TEXT,
    PRIMARY KEY (CodInformacao)
);
