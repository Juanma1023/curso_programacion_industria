--CONSULTAS
--El banco est� interesado en saber cu�nto dinero tiene cada uno de sus clientes
select monto_cuenta monto, clientes.nombre nombre , clientes.cuenta_bancaria cuenta  
from cuentas 
inner join clientes on cuentas.id = clientes.cuenta_bancaria 
group by monto_cuenta, clientes.cuenta_bancaria , clientes.nombre  
	
--El banco est� interesado en saber cu�ntas transacciones hace cada cliente al mes.
select id_usuario as identificacion, count(id_usuario) as Numero_transaciones,to_char(fecha_transaccion,'mm') as mes 
from transacciones 
group by id_usuario ,to_char(fecha_transaccion,'mm')

--El banco est� interesado en conocer cu�l es el mes con mayor n�mero de transacciones}
select count(to_char(fecha_transaccion,'mm')) as cantidad, to_char(fecha_transaccion,'mm') as mes 
from transacciones
group by to_char(fecha_transaccion,'mm') 
order by count(to_char(fecha_transaccion,'mm')) desc limit 1

--El banco est� interesado en saber en qu� mes se movi� la mayor cantidad de dinero.
select sum(monto_transaccion) as cantidad_total , to_char(fecha_transaccion,'mm') as mes
from transacciones 
group by to_char(fecha_transaccion,'mm')
order by sum(monto_transaccion) desc limit 1

--El banco est� interesado en saber en cu�l mes se crearon la mayor cantidad de cuentas.
select count(to_char(fecha_creacion,'mm')) as Cantidad , to_char(fecha_creacion,'mm') as mes  
from cuentas
group by to_char(fecha_creacion ,'mm') 
order by count(to_char(fecha_creacion,'mm')) desc limit 1
	 
--El banco quiere saber en que ciudades tiene mayor presencia.
select * from sedes
select count(ciudad) , ciudad from sedes group by ciudad order by count(ciudad) desc limit 1