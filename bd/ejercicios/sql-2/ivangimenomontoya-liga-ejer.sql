-- I1 - Los jugadores de tu equipo con nombre, posición, dorsal y edad hoy, ordenados por dorsal

select
  id_jugador, nombre, posicion, dorsal, TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) as edad
from
  jugador
where
  id_equipo = 1
order by
  dorsal;

-- I2 - ¿Cuántos jugadores de tu equipo nacieron en el año 2000 o después?

select
  count(id_jugador) as jugador_2000
from
  jugador
where
  id_equipo = 1 AND year(fecha_nacimiento) >= 2000;

-- I3 - Los partidos de tu equipo, de local o de visitante, ordenados por jornada, con una columna `resultado` que diga `ganado`, `empatado` o `perdido` **para tu equipo**


select
  id_partido, jornada, if(goles_local - goles_visitante > 0, "ganado", (if(goles_local - goles_visitante < 0, "perdido", "empate"))) as resultado
from
  partido
where id_local = 1
group by
  id_partido
order by
 jornada;

-- I4 - ¿Cuántos goles ha marcado tu equipo en casa? ¿Y fuera? Si sale algo raro, explica por qué en un comentario

-- Goles en casa
SELECT SUM(goles_local) AS goles_en_casa
FROM partido
WHERE id_local = 1;

-- Goles fuera
SELECT SUM(goles_visitante) AS goles_fuera
FROM partido
WHERE id_visitante = 1;

-- UN EQUIPO NO PUEDE JUGAR CONTRA SÍ MISMO  por eso da NULL
select
  sum(goles_local), 
  sum(goles_visitante)
from
  partido
where 
  id_local = 1 and id_visitante = 1;


-- I5 - El jugador de tu equipo que más goles ha marcado: su número y sus goles. Los números de tu equipo los tienes en I1


select 
  id_jugador, 
  count(id_gol)
from gol
where 
    id_jugador between 1 and 6
group by id_jugador
order by count(id_gol) desc
limit 1;


-- I6 - Una pregunta tuya sobre la liga, que use `GROUP BY` o una función. Escribe la pregunta, la consulta y, en un comentario, qué devuelve 

-- Cantidad de jugadores en tú equipo para cada posición.

select
  posicion,
  count(id_jugador) as cantidad_jugadores
from
  jugador
where
  id_equipo = 1
group by 
  posicion
order by
  cantidad_jugadores DESC;

-- Devuelve
-- | posicion	| cantidad_jugadores|
-- |-|-|
-- |ala|	3
-- |cierre	|2
-- |portero	|2
-- |pívot	|1