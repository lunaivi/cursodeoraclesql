set SERVEROUTPUT on;--este condigo es para  que muestre el resultada de la impresion por pantalla

DECLARE
/*
definicion de funciones y variable
salario number := 1500;
nombreEmpleando nvarchar2(100);
activo boolean;
fecha date;
*/
cantidad number;
usuario nvarchar2(100);


BEGIN
/*
select user into usuario from dual;-- este codigo es para saber caul es el usario de la base de datos
dbms_output.put_line('Usuario:' || usuario);

select count(*) into cantidad from dual;
dbms_output.put_line('Cantidad:' || cantidad);
*/
--optimizaciond e consulta
select user,count(*) into usuario,cantidad from dual;
dbms_output.put_line('Usuario:' || usuario);
dbms_output.put_line('Cantidad:' || cantidad);


/*Codigo comentado
nombreEmpleando := 'Fernando Herreara';
activo := true;
fecha := '31-12-2015';


dbms_output.put_line('Nombre:'|| nombreEmpleandon);
dbms_output.put_line('Salario:'|| salario);
dbms_output.put_line('Fecha:'|| fecha);
dbms_output.put_line('Activo:'|| case when activo then 'si' else 'No' end);
*/
END;
/