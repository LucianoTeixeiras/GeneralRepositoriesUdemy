-- VESTIBULAR.SOCIOECONOMICA
SELECT
	inscricao,
	total_pontos,
	curso,
	sexo,
	idade,
	local_origem,
	tipo_instituicao,
	renda_familiar,
	tipo_residencia,
	grau_escolaridade,
	motivo,
	transporte,
	instrucao_pai,
	instrucao_mae,
	automovel,
	livros,
	leitura,
	internet
FROM
	vestibular.socioeconomica;

# Iniiando ETL

SELECT
	*
FROM
	vestibular.socioeconomica;

ALTER TABLE vestibular.socioeconomica DROP COLUMN inscricao;

# Sugest�es de Corre��o de Erros

-- 1 Entrar em contao com as pessoas para coletar os dados de didade correto
-- 2 Deletar os dados errados - Pode causar problema na recupera��o das regras considerand que estes dados s�o importantes
-- 3 Corrir os dados por conta, com a media do valor da coluna, no caso IDADE, excluindo os extremas negativos e positivos

SELECT * FROM vestibular.socioeconomica where idade < 14 or idade >80;

-- DELETE FROM vestibular.socioeconomica where idade < 14 or idade >80;

SELECT avg(idade) FROM vestibular.socioeconomica where idade > 14 and idade <80;

# Corre��o dos dados

UPDATE vestibular.socioeconomica SET idade = 20 where idade < 14 or idade >80;

# Idade em Intervalos de Classe

-- < 17
--   17
--   17 - 22
--   22 - 30
--   30 - 40
-- > 40

# Function Idade

create function GetFaixaIdade(idade int) returns varchar(20)
    READS SQL DATA
    DETERMINISTIC
begin
	declare faixa varchar(20);
    if (idade < 17) then
      set faixa = 'menor 17';
	elseif (idade = 17) then
      set faixa = '17 anos';
	elseif (idade > 17 and idade <= 22) then
      set faixa = 'entre 18 e 22';
	elseif (idade > 22 and idade <= 30) then
      set faixa = 'entre 23 e 30';
	elseif (idade > 30 and idade <= 40) then
      set faixa = 'entre 31 e 40';
	elseif (idade > 40) then
      set faixa = 'acima 40';
	end if;
    return faixa;
end;

SELECT idade, GetFaixaIdade(idade) FROM vestibular.socioeconomica;

# Total de Pontos - Defini��o da Faixa de Ponto

SELECT DISTINCT(total_pontos)FROM vestibular.socioeconomica;

# FUNCTION Pontos

create function GetClassePontos(pontos float) returns varchar(20)
    READS SQL DATA
    DETERMINISTIC
begin
	declare faixa varchar(20);
    if (pontos < 20) then
	  set faixa = 'menos 20 pontos';
	elseif (pontos >= 20 and pontos <= 39) then
	  set faixa = '20-40 pontos';
	elseif (pontos > 39 and pontos <= 60) then
      set faixa = '40-60 pontos';
	elseif (pontos > 60 and pontos <= 80) then
      set faixa = '60-80 pontos';
	else
      set faixa = 'acima 80 pontos';
	end if;
    return faixa;
end;

SELECT total_pontos, GetClassePontos(total_pontos) FROM vestibular.socioeconomica;

# Padronizando o Nome do CURSO

SELECT curso from vestibular.socioeconomica;

# FUNCTION Nome do Curso

create function GetNomeCurso(curso varchar(100)) returns varchar(100)
    READS SQL DATA
    DETERMINISTIC
begin
	declare novocurso varchar(100);
    if (curso = 'ENGENHARIA AGRON�MICA') then
      set novocurso = 'ENGENHARIA AGRON�MICA';
	elseif (curso = 'ENSINO M�DIO E T�CNICO EM AGROPECU�RIA') then
      set novocurso = 'ENSINO M�DIO E T�CNICO EM AGROPECU�RIA INTEGRADO';
	elseif (curso = 'T�CNICO EM INFORM�TICA - NOTURNO' or 
			curso = 'T�CNICO EM INFORM�TICA - VESPERTINO') then
	  set novocurso = 'INFORM�TICA';
	elseif (curso = 'T�CNICO EM AGROPECU�RIA') then
      set novocurso = 'AGROPECU�RIA';
	elseif (curso = 'CI�NCIA DA COMPUTA��O - BACHARELADO') then
      set novocurso = 'CI�NCIA DA COMPUTA��O';
	elseif (curso = 'ENSINO M�DIO E T�CNICO EM INFORM�TICA') then
      set novocurso = 'ENSINO M�DIO E T�CNICO EM INFORM�TICA';
	elseif (curso = 'CI�NCIAS BIOL�GICAS - LICENCIATURA') then
      set novocurso = 'CI�NCIAS BIOL�GICAS';
	elseif (curso = 'EDUCA��O F�SICA - LICENCIATURA - VESPERTINO' or
            curso = 'EDUCA��O F�SICA - BACHARELADO - NOTURNO' or
            curso = 'EDUCA��O F�SICA - LICENCIATURA - NOTURNO' or
            curso = 'EDUCA��O F�SICA - BACHARELADO - VESPERTINO') then
	  set novocurso = 'EDUCA��O F�SICA';
	elseif (curso = 'T�CNICO EM MEIO AMBIENTE') then
      set novocurso = 'MEIO AMBIENTE';
	elseif (curso = 'T�CNICO EM ENFERMAGEM - NOTURNO') then
      set novocurso = 'ENFERMAGEM';
	elseif (curso = 'ENSINO M�DIO E T�CNICO EM ALIMENTOS') then
      set novocurso = 'ENSINO M�DIO E T�CNICO EM ALIMENTOS';
	elseif (curso = 'T�CNICO EM SEGURAN�A DO TRABALHO') then
      set novocurso = 'SEGURAN�A DO TRABALHO';
    end if;  
	return novocurso;
end;

SELECT
	curso,
	GetNomeCurso(curso)
from
	vestibular.socioeconomica
group by
	curso;

# Criar Atributo Per�odo do Curso

# FUNCTION Per�odo do Curso

create function GetPeriodoCurso(curso varchar(100)) returns varchar(100)
    READS SQL DATA
    DETERMINISTIC
begin
	declare periodo varchar(100);
    if (curso = 'ENGENHARIA AGRON�MICA' or 
		curso = 'ENSINO M�DIO E T�CNICO EM AGROPECU�RIA' or
        curso = 'T�CNICO EM AGROPECU�RIA' or
        curso = 'ENSINO M�DIO E T�CNICO EM INFORM�TICA' or
        curso = 'ENSINO M�DIO E T�CNICO EM ALIMENTOS') then
	  set periodo = 'INTEGRAL';
      
	elseif (curso = 'T�CNICO EM INFORM�TICA - NOTURNO' or 
			curso = 'CI�NCIA DA COMPUTA��O - BACHARELADO' or
			curso = 'CI�NCIAS BIOL�GICAS - LICENCIATURA' or
			curso = 'EDUCA��O F�SICA - BACHARELADO - NOTURNO' or
			curso = 'T�CNICO EM MEIO AMBIENTE' or
            curso = 'T�CNICO EM ENFERMAGEM - NOTURNO' or
            curso = 'EDUCA��O F�SICA - LICENCIATURA - NOTURNO' or
            curso = 'T�CNICO EM SEGURAN�A DO TRABALHO') then
     set periodo = 'NOTURNO';
	
    elseif (curso = 'EDUCA��O F�SICA - LICENCIATURA - VESPERTINO' or
            curso = 'T�CNICO EM INFORM�TICA - VESPERTINO' or
            curso = 'EDUCA��O F�SICA - BACHARELADO - VESPERTINO') then
	  set periodo = 'VESPERTINO';
	
    end if;  
	return periodo;
end;

SELECT
	curso,
	GetPeriodoCurso(curso)
from
	vestibular.socioeconomica
group by
	curso;

# Criar Atribuo Grau do Curso

# FUNCTION Grau do CURSO

create function GetGrauCurso(curso varchar(100)) returns varchar(100)
    READS SQL DATA
    DETERMINISTIC
begin
	declare grau varchar(100);
    if (curso = 'ENGENHARIA AGRON�MICA' or 
		curso = 'CI�NCIA DA COMPUTA��O - BACHARELADO') then
	  set grau = 'SUPERIOR';
      
	elseif (curso = 'ENSINO M�DIO E T�CNICO EM AGROPECU�RIA' or 
			curso = 'ENSINO M�DIO E T�CNICO EM INFORM�TICA' or
			curso = 'ENSINO M�DIO E T�CNICO EM ALIMENTOS') then
     set grau = 'ENSINO M�DIO E T�CNICO';
	
    elseif (curso = 'T�CNICO EM INFORM�TICA - NOTURNO' or
            curso = 'T�CNICO EM AGROPECU�RIA' or
            curso = 'T�CNICO EM INFORM�TICA - VESPERTINO' or
            curso = 'T�CNICO EM MEIO AMBIENTE' or
            curso = 'T�CNICO EM ENFERMAGEM - NOTURNO' or
            curso = 'T�CNICO EM SEGURAN�A DO TRABALHO') then
	  set grau = 'T�CNICO';
	
    elseif (curso = 'CI�NCIAS BIOL�GICAS - LICENCIATURA' or 
			curso = 'EDUCA��O F�SICA - LICENCIATURA - VESPERTINO' or
			curso = 'EDUCA��O F�SICA - LICENCIATURA - NOTURNO') then
     set grau = 'LICENCIATURA';
     
     elseif (curso = 'EDUCA��O F�SICA - BACHARELADO - NOTURNO' or 
			curso = 'EDUCA��O F�SICA - BACHARELADO - VESPERTINO') then
     set grau = 'BACHARELADO';
    
    end if;  
	return grau;
end;

SELECT
	curso,
	GetGrauCurso(curso)
from
	vestibular.socioeconomica
group by
	curso;
