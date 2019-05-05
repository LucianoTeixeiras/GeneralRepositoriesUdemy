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

# Sugestões de Correção de Erros

-- 1 Entrar em contao com as pessoas para coletar os dados de didade correto
-- 2 Deletar os dados errados - Pode causar problema na recuperação das regras considerand que estes dados são importantes
-- 3 Corrir os dados por conta, com a media do valor da coluna, no caso IDADE, excluindo os extremas negativos e positivos

SELECT * FROM vestibular.socioeconomica where idade < 14 or idade >80;

-- DELETE FROM vestibular.socioeconomica where idade < 14 or idade >80;

SELECT avg(idade) FROM vestibular.socioeconomica where idade > 14 and idade <80;

# Correção dos dados

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

# Total de Pontos - Definição da Faixa de Ponto

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
    if (curso = 'ENGENHARIA AGRONÔMICA') then
      set novocurso = 'ENGENHARIA AGRONÔMICA';
	elseif (curso = 'ENSINO MÉDIO E TÉCNICO EM AGROPECUÁRIA') then
      set novocurso = 'ENSINO MÉDIO E TÉCNICO EM AGROPECUÁRIA INTEGRADO';
	elseif (curso = 'TÉCNICO EM INFORMÁTICA - NOTURNO' or 
			curso = 'TÉCNICO EM INFORMÁTICA - VESPERTINO') then
	  set novocurso = 'INFORMÁTICA';
	elseif (curso = 'TÉCNICO EM AGROPECUÁRIA') then
      set novocurso = 'AGROPECUÁRIA';
	elseif (curso = 'CIÊNCIA DA COMPUTAÇÃO - BACHARELADO') then
      set novocurso = 'CIÊNCIA DA COMPUTAÇÃO';
	elseif (curso = 'ENSINO MÉDIO E TÉCNICO EM INFORMÁTICA') then
      set novocurso = 'ENSINO MÉDIO E TÉCNICO EM INFORMÁTICA';
	elseif (curso = 'CIÊNCIAS BIOLÓGICAS - LICENCIATURA') then
      set novocurso = 'CIÊNCIAS BIOLÓGICAS';
	elseif (curso = 'EDUCAÇÃO FÍSICA - LICENCIATURA - VESPERTINO' or
            curso = 'EDUCAÇÃO FÍSICA - BACHARELADO - NOTURNO' or
            curso = 'EDUCAÇÃO FÍSICA - LICENCIATURA - NOTURNO' or
            curso = 'EDUCAÇÃO FÍSICA - BACHARELADO - VESPERTINO') then
	  set novocurso = 'EDUCAÇÃO FÍSICA';
	elseif (curso = 'TÉCNICO EM MEIO AMBIENTE') then
      set novocurso = 'MEIO AMBIENTE';
	elseif (curso = 'TÉCNICO EM ENFERMAGEM - NOTURNO') then
      set novocurso = 'ENFERMAGEM';
	elseif (curso = 'ENSINO MÉDIO E TÉCNICO EM ALIMENTOS') then
      set novocurso = 'ENSINO MÉDIO E TÉCNICO EM ALIMENTOS';
	elseif (curso = 'TÉCNICO EM SEGURANÇA DO TRABALHO') then
      set novocurso = 'SEGURANÇA DO TRABALHO';
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

# Criar Atributo Período do Curso

# FUNCTION Período do Curso

create function GetPeriodoCurso(curso varchar(100)) returns varchar(100)
    READS SQL DATA
    DETERMINISTIC
begin
	declare periodo varchar(100);
    if (curso = 'ENGENHARIA AGRONÔMICA' or 
		curso = 'ENSINO MÉDIO E TÉCNICO EM AGROPECUÁRIA' or
        curso = 'TÉCNICO EM AGROPECUÁRIA' or
        curso = 'ENSINO MÉDIO E TÉCNICO EM INFORMÁTICA' or
        curso = 'ENSINO MÉDIO E TÉCNICO EM ALIMENTOS') then
	  set periodo = 'INTEGRAL';
      
	elseif (curso = 'TÉCNICO EM INFORMÁTICA - NOTURNO' or 
			curso = 'CIÊNCIA DA COMPUTAÇÃO - BACHARELADO' or
			curso = 'CIÊNCIAS BIOLÓGICAS - LICENCIATURA' or
			curso = 'EDUCAÇÃO FÍSICA - BACHARELADO - NOTURNO' or
			curso = 'TÉCNICO EM MEIO AMBIENTE' or
            curso = 'TÉCNICO EM ENFERMAGEM - NOTURNO' or
            curso = 'EDUCAÇÃO FÍSICA - LICENCIATURA - NOTURNO' or
            curso = 'TÉCNICO EM SEGURANÇA DO TRABALHO') then
     set periodo = 'NOTURNO';
	
    elseif (curso = 'EDUCAÇÃO FÍSICA - LICENCIATURA - VESPERTINO' or
            curso = 'TÉCNICO EM INFORMÁTICA - VESPERTINO' or
            curso = 'EDUCAÇÃO FÍSICA - BACHARELADO - VESPERTINO') then
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
    if (curso = 'ENGENHARIA AGRONÔMICA' or 
		curso = 'CIÊNCIA DA COMPUTAÇÃO - BACHARELADO') then
	  set grau = 'SUPERIOR';
      
	elseif (curso = 'ENSINO MÉDIO E TÉCNICO EM AGROPECUÁRIA' or 
			curso = 'ENSINO MÉDIO E TÉCNICO EM INFORMÁTICA' or
			curso = 'ENSINO MÉDIO E TÉCNICO EM ALIMENTOS') then
     set grau = 'ENSINO MÉDIO E TÉCNICO';
	
    elseif (curso = 'TÉCNICO EM INFORMÁTICA - NOTURNO' or
            curso = 'TÉCNICO EM AGROPECUÁRIA' or
            curso = 'TÉCNICO EM INFORMÁTICA - VESPERTINO' or
            curso = 'TÉCNICO EM MEIO AMBIENTE' or
            curso = 'TÉCNICO EM ENFERMAGEM - NOTURNO' or
            curso = 'TÉCNICO EM SEGURANÇA DO TRABALHO') then
	  set grau = 'TÉCNICO';
	
    elseif (curso = 'CIÊNCIAS BIOLÓGICAS - LICENCIATURA' or 
			curso = 'EDUCAÇÃO FÍSICA - LICENCIATURA - VESPERTINO' or
			curso = 'EDUCAÇÃO FÍSICA - LICENCIATURA - NOTURNO') then
     set grau = 'LICENCIATURA';
     
     elseif (curso = 'EDUCAÇÃO FÍSICA - BACHARELADO - NOTURNO' or 
			curso = 'EDUCAÇÃO FÍSICA - BACHARELADO - VESPERTINO') then
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
