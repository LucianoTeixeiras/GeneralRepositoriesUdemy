# Criaçao de Funçoes no DBEAVER
# Data do Pedido

CREATE DEFINER=`root`@`localhost` FUNCTION `GetDiaSemana`(data_pedido DATE) RETURNS varchar(10) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
BEGIN
	RETURN DAYNAME(DATA_PEDIDO);
END$$


# Hora do Pedido

CREATE DEFINER=`root`@`localhost` FUNCTION `pizzaria`.`GetPeriodoVenda`(HORA_PEDIDO TIME) RETURNS varchar(10) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
BEGIN
	declare periodo varchar(10);
	if (hora_pedido < '20:00:00') then
		set periodo = 'Inicio';
	elseif (hora_pedido >= '20:00:00' and hora_pedido < '22:00:00') then
		set periodo = 'Pico';
	elseif (hora_pedido >= '22:00:00') then
		set periodo = 'Final';
	end if;
	return periodo;
END;

# Borda

CREATE DEFINER=`root`@`localhost` FUNCTION `pizzaria`.`GetBorda`(valor_borda float) RETURNS varchar(10) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
BEGIN
	declare borda varchar(10);
	if (valor_borda > 0) then
		set borda = 'Borda sim';
	else
		set borda = 'Borda não';
	end if;

	return borda;
END;

# Rerigerante

CREATE DEFINER=`root`@`localhost` FUNCTION `pizzaria`.`GetRefrigerante`(valor_Refrigerante float) RETURNS varchar(20) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
BEGIN
	declare refrigerante varchar(20);
	if (valor_refrigerante > 0) then
		set refrigerante = 'Refrigerante sim';
	else
		set refrigerante = 'Refrigerante não';
	end if;

	return refrigerante;
END;

# Intervalo de Frequencia

CREATE DEFINER=`root`@`localhost` FUNCTION `pizzaria`.`GetFaixaValor`(valor_total float) RETURNS varchar(10) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
BEGIN
	declare faixa varchar(10);
  if (valor_total >= 10 and valor_total < 14) then
    set faixa = 'vl 10-14';
  elseif (valor_total >= 14 and valor_total < 18) then
    set faixa = 'vl 14-18';
  elseif (valor_total >= 18 and valor_total < 22) then
    set faixa = 'vl 18-22';
  elseif (valor_total >= 22 and valor_total < 26) then
    set faixa = 'vl 22-26';
  elseif (valor_total >= 26 and valor_total < 30) then
    set faixa = 'vl 26-30';
  elseif (valor_total >= 30 and valor_total < 34) then
    set faixa = 'vl 30-34';
  elseif (valor_total >= 34 and valor_total < 38) then
    set faixa = 'vl 34-38';
  elseif (valor_total >= 38 and valor_total < 42) then
    set faixa = 'vl 38-42';
  elseif (valor_total >= 42 and valor_total < 46) then
    set faixa = 'vl 42-46';
  elseif (valor_total >= 46 and valor_total <= 50) then
    set faixa = 'vl 46-50';
  end if;
	return faixa;
END;

# Intervalo de Tempo 

create function GetFaixaTempo(minutos float) returns varchar (10)
    READS SQL DATA
    DETERMINISTIC
begin
  declare faixa varchar(10);
  if (minutos >= 10 and minutos < 22) then
    set faixa = 'tp 10-22';
  elseif (minutos >= 22 and minutos < 33) then
    set faixa = 'tp 22-33';
  elseif (minutos >= 33 and minutos < 44) then
    set faixa = 'tp 33-44';
  elseif (minutos >= 44 and minutos <= 55) then
    set faixa = 'tp 44-55';
  end if;
  return faixa;
end;
