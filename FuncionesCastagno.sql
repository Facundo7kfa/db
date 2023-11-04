delimiter $$
create function FN_SERVI_ID (p_id_cliente int) returns varchar(50) deterministic 
begin 
declare servicio_info varchar(50);

select info_servi into servicio_info
from servicios 
where id_cliente = p_id_cliente ;

return servicio_info;
end $$

delimiter ;

select FN_SERVI_ID(211) ;



DELIMITER $$

CREATE FUNCTION FN_MODELO_NAVE_DEL_PILOTO(piloto_id INT) RETURNS VARCHAR(20) DETERMINISTIC
BEGIN
  DECLARE nave_model VARCHAR(20);


  SELECT n.modelo INTO nave_model
  FROM piloto p
  INNER JOIN nave n ON p.id_nave = n.id_nave
  WHERE p.id_piloto = piloto_id;

  RETURN nave_model;
END$$

DELIMITER ;
