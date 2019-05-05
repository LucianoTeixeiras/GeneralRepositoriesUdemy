SELECT count(*) FROM pizzaria.pedidos;
select * from pizzaria.pedidos;

alter table pizzaria.pedidos drop column numero;
alter table pizzaria.pedidos drop column cliente;
alter table pizzaria.pedidos drop column endereco;
alter table pizzaria.pedidos drop column telefone;
alter table pizzaria.pedidos drop column valor_pizza;
alter table pizzaria.pedidos drop column valor_enrega;
alter table pizzaria.pedidos drop column hora_entrega;

select * from pizzaria.pedidos;

select max(data_pedido), min(data_pedido) from pizzaria.pedidos;
delete from pedidos where year(data_pedido) >= 2015;

select dayname(data_pedido) from pizzaria.pedidos;

select @@lc_time_names;
set lc_time_names = 'pt_BR';

select @@lc_time_names;

select dayname(data_pedido) from pizzaria.pedidos;

select data_pedido, GetDiaSemana(data_pedido) from pedidos;

# Hora do Pedido

select max(hora_pedido), min(hora_pedido) from pizzaria.pedidos;

# Definição dos Intervalos
# 17-20
# 20-22
# >22

select hora_pedido, GetPeriodoVenda(hora_pedido) from pedidos;

# AJuste de Borda ou Refrigerante

select valor_borda, GetBorda(valor_borda) from pedidos;

select valor_refrigerante, GetRefrigerante(valor_refrigerante) from pedidos;

# Distribuição da Frequência

select distinct(valor_total) from pedidos;

select
	valor_total,
	count(valor_total)
from
	pedidos
group by
	valor_total
order by
	1 asc;

select valor_total, GetFaixaValor(valor_total) from pedidos
;

select count(valor_total), GetFaixaValor(valor_total) from pedidos
group by valor_total;

# Tempo de Pizza Ficar pronta

select max(tempo), min(tempo) from pedidos;

select minute(tempo) from pedidos;

select tempo, GetFaixaTempo(minute(tempo)) from pedidos;

# Consula Final

select count(*), GetDiaSemana(data_pedido) from pedidos group by GetDiaSemana(data_pedido);

select count(*), GetPeriodoVenda(hora_pedido) from pedidos group by GetPeriodoVenda(hora_pedido);

select count(*), tipo_entrega from pedidos group by tipo_entrega;

select count(*), GetBorda(valor_borda) from pedidos group by GetBorda(valor_borda);

select count(*), GetRefrigerante(valor_refrigerante) from pedidos group by GetRefrigerante(valor_refrigerante);

select count(*), GetFaixaValor(valor_total) from pedidos group by GetFaixaValor(valor_total);

select count(*), GetFaixaTempo(minute(tempo)) from pedidos group by GetFaixaTempo(minute(tempo));

select
	GetDiaSemana(data_pedido) as dia,
	GetPeriodoVenda(hora_pedido) as periodo,
	tipo_entrega,
	GetBorda(valor_borda) as borda,
	GetRefrigerante(valor_refrigerante) as refrigerane,
	GetFaixaValor(valor_total) as valor_total,
	GetFaixaTempo(minute(tempo)) as tempo
from
	pedidos;
