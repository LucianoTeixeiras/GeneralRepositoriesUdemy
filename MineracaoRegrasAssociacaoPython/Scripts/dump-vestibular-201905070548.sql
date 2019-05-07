-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: vestibular
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `socioeconomica`
--

DROP TABLE IF EXISTS `socioeconomica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `socioeconomica` (
  `total_pontos` float DEFAULT NULL,
  `curso` varchar(70) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `local_origem` varchar(20) DEFAULT NULL,
  `tipo_instituicao` varchar(50) DEFAULT NULL,
  `renda_familiar` varchar(30) DEFAULT NULL,
  `tipo_residencia` varchar(20) DEFAULT NULL,
  `grau_escolaridade` varchar(20) DEFAULT NULL,
  `motivo` varchar(70) DEFAULT NULL,
  `transporte` varchar(20) DEFAULT NULL,
  `instrucao_pai` varchar(50) DEFAULT NULL,
  `instrucao_mae` varchar(50) DEFAULT NULL,
  `automovel` char(3) DEFAULT NULL,
  `livros` varchar(20) DEFAULT NULL,
  `leitura` varchar(20) DEFAULT NULL,
  `internet` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'vestibular'
--
/*!50003 DROP FUNCTION IF EXISTS `GetClassePontos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetClassePontos`(pontos float) RETURNS varchar(20) CHARSET utf8
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetFaixaIdade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetFaixaIdade`(idade int) RETURNS varchar(20) CHARSET utf8
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetGrauCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetGrauCurso`(curso varchar(100)) RETURNS varchar(100) CHARSET utf8
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetNomeCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetNomeCurso`(curso varchar(100)) RETURNS varchar(100) CHARSET utf8
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetPeriodoCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetPeriodoCurso`(curso varchar(100)) RETURNS varchar(100) CHARSET utf8
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
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07  5:48:36
