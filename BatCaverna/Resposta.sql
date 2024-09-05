SELECT *
FROM ALFRED

SELECT *
FROM Comodo_Batcaverna

SELECT *
FROM BatEstoque
WHERE CodComodo = 'C003' AND Status = 'Ausente';

SELECT *
FROM SuperHeroi
WHERE Fraqueza = 'ITM12'

SELECT DISTINCT CodSuperVilao
FROM Rivalidade
WHERE CodSuperHeroi IN ('SH06', 'SH08', 'SH11', 'SH12');

SELECT V.CodVeiculo, V.Tipo, V.Nome AS NomeVeiculo, SV.CodSuperVilao, SV.Nome AS NomeVilao
FROM Veiculo V
INNER JOIN Donos_dos_Veiculos DV ON V.CodVeiculo = DV.CodVeiculo
INNER JOIN SuperVilao SV ON DV.CodDono = SV.CodSuperVilao
WHERE V.Tipo = 'Aéreo' AND SV.CodSuperVilao IN ('SV02', 'SV03', 'SV06', 'SV07', 'SV09', 'SV10', 'SV13');

SELECT *
FROM SuperVilao
WHERE Nome IN ('Brainiac', 'General Zod', 'Sinestro', 'Mecanicat') AND Status = 'Desaparecido';
