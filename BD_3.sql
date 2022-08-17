select * from item_pedido
where id_pedido = 1;

select * from cliente;
select * from cidade;
insert into cliente values
(null, "DANIEL", "070", "M", "ATIVO",2);

select * from pedido;
select * from item_pedido;

/*CRIANDO O PEDIDO*/
insert into pedido values
(null,12,2,"2022-08-02",0);

/*ADICIONANDO OS ITEMS AO PEDIDO*/
insert into item_pedido values
(null, 12, 23, 1, 1547.25),
(null, 12, 14, 2, 24.60),
(null, 12, 4, 5, 5.50);


/*ATUALIZAR UM REGISTRO*/
UPDATE produto
SET valor = valor - 3
WHERE cd = 14;

/*ATUALIZANDO O REGISTRO DO PRODUTO NO item_pedido*/
UPDATE item_pedido
SET vl_unitario = vl_unitario - 3
WHERE id_pedido = 12
AND id_produto = 14;

/*EXCLUIR UM REGISTRO*/
DELETE FROM item_pedido
WHERE id_pedido = 12
AND id_produto = 14;



select * from produto;

/*PARA SOMAR E MULTIPLICAR OS PRODUTOS*/
select *, SUM(qt_produto*vl_unitario) total
from item_pedido
where id_pedido = 12
group by id_produto
with rollup;