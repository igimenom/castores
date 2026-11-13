# GBD · SQL 2 · Preguntas a la liga

Sobre la base `liga` (`sql-1/liga.sql`). Antes de empezar, comprobad que tenéis los datos:

```sql
SELECT COUNT(*) FROM equipo;    -- 6
SELECT COUNT(*) FROM jugador;   -- 48
SELECT COUNT(*) FROM partido;   -- 15
SELECT COUNT(*) FROM gol;       -- 68
```

**T** son para todas las parejas: cuando la tengáis, decid el número de filas o el valor que sale.
**A**, **B** y **C** son tandas en paralelo: cada pareja hace la suya, y si acaba, la siguiente.

Cada consulta va a `bd/liga/consultas.sql`, con la pregunta en un comentario encima:

```sql
-- T3 · ¿En qué ciudades hay equipo? Sin repetir
SELECT DISTINCT ciudad FROM equipo;
```

Ejecutad con **Ctrl+Intro** la consulta donde está el cursor.

Los equipos van por número: 1 CD Moncayo, 2 Atlético Ebro, 3 Huesca Sala, 4 Teruel Mudéjar FS,
5 Delicias FS, 6 Cinco Villas FS.

## 1 · `SELECT`, `FROM`, alias, `DISTINCT`

```sql
SELECT columna1, columna2 AS otro_nombre, columna3 + columna4 AS calculada
FROM tabla;
SELECT DISTINCT columna FROM tabla;
```

- **T1.** Nombre y ciudad de los equipos.
```sql
SELECT nombre, ciudad FROM equipo;
```
- **T2.** Cada partido con su número y los goles totales, en una columna llamada `total`.
```sql
SELECT id_partido, goles_locales + goles_visitante as total from PARTIDO;
```
- **T3.** ¿En qué ciudades hay equipo? Sin repetir.
```sql
SELECT DISTINCT ciudad from equipo where nombre is not null
```
| A | B | C |
|---|---|---|
| Nombre, posición y dorsal de todos los jugadores | Nombre y fecha de nacimiento de los jugadores | Nombre y pabellón de los equipos, con las columnas llamadas `Equipo` y `Pabellón` |
| ¿Qué posiciones hay? Sin repetir | ¿Qué jornadas y fechas hay? Sin repetir | ¿Qué dorsales se usan? Sin repetir |
| Cada partido con la diferencia de goles (local − visitante), en una columna `diferencia` | Cada gol con su minuto y cuántos minutos faltaban para el final (el partido dura 40) | Cada partido con `goles_local * 3` en una columna `puntos_si_fueran_triples` |

## 2 · `ORDER BY`, `LIMIT`

```sql
SELECT … FROM … ORDER BY columna DESC, otra_columna LIMIT 5;
```

- **T4.** Los tres jugadores más veteranos.
```sql
select nombre, fecha_nacimiento from jugador order by fecha_nacimiento asc limit 3;
```
- **T5.** Los tres partidos con más goles. ¿Sale siempre lo mismo?
```sql
select id_partido, goles locales + goles visitante as total from partido order by total desc limit 3;
```
Una, la que queráis:

- Los cinco dorsales más altos; a igual dorsal, por nombre.
```sql
select dorsal, nombre from jugador order by dorsal desc, nombre limit 5;
```
- El primer jugador por orden alfabético.
```sql
select nombre from jugador order by nombre limit 1;
```
- Los equipos ordenados por ciudad, y dentro de cada ciudad, por nombre.
```sql
select nombre, ciudad from equipo order by ciudad, nombre;
```

## 3 · `WHERE`

```sql
SELECT … FROM … WHERE condición;
-- =  <>  <  >  <=  >=     AND  OR  NOT
-- BETWEEN 2 AND 5     IN ('a', 'b')     LIKE 'A%'     IS NULL
```

- **T6.** ¿Cuántos jugadores tiene Teruel Mudéjar?
```sql
select COUNT(*) as total from jugador where id_equipo = 4
```
- **T7.** Partidos que acabaron en empate.
```sql
select id_partido from partido where golges_local = goles_visitante
```
- **T8.** Partidos que ganó el visitante.
```sql
select id_partido from partido where goles_local < goles_visitante
```
- **T9.** Jugadores de los equipos 1 y 2 que sean alas o porteros.
```sql
select nombre from jugador where id_equipo in (1,2) AND posicion in ('ala', 'portero')
```
- **T10.** Jugadores cuyo nombre empieza por A.
```sql
select nombre from jugador where nombre like 'a%';
```
- **T11.** Equipos sin pabellón.
```sql
select id_equipo from equipo where pabellon = ''
```

| A | B | C |
|---|---|---|
| Jugadores con dorsal mayor que 15 | ¿Cuántos jugadores nacieron en el año 2000 o después? | Partidos en los que jugó el equipo 3, de local o de visitante |
| Pívots y cierres del equipo 5 | Jugadores que se apellidan Sánchez | Alas con dorsal entre 2 y 9 |
| ¿Cuántos goles se marcaron entre el minuto 35 y el 40? | Equipos que no son de Zaragoza | ¿Cuántos goles se marcaron antes del minuto 5? |

Más: porteros nacidos antes de 1995. Jugadores que no son alas.

## 4 · Funciones

```sql
YEAR(fecha)   MONTH(fecha)   DAYNAME(fecha)   CURDATE()
TIMESTAMPDIFF(YEAR, fecha_inicio, fecha_fin)
UPPER(texto)   CHAR_LENGTH(texto)   CONCAT(texto1, ' ', texto2)
IF(condición, valor_si_sí, valor_si_no)
```

- **T12.** Nombre de cada equipo en mayúsculas y cuántas letras tiene.
```sql
select UPPER(nombre) as nombre_upper, CHAR_LENGTH(nombre) as longitud from equipo;
```
- **T13.** Los tres jugadores de más edad, con la edad calculada.
```sql
select nombre, fecha_nacimiento from jugador order by fecha_nacimiento, TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) ASC limit 3;
```
- **T14.** Cada partido con quién ganó: `local`, `visitante` o `empate`.
```sql
select  id_partido, goles_locales - goles_visitante, if(goles_local - goles_visitante > 0, if(goles-local - goles_visitante = 0, "empate", "visitante")) from partido
```

| A | B | C |
|---|---|---|
| Jugadores del equipo 1 con nombre y dorsal en una sola columna: «Hamza Serrano (1)» | Jugadores nacidos en mayo, con su año de nacimiento | ¿Qué día de la semana se juegan los partidos? |

## 5 · Contar y agrupar

```sql
COUNT(*)   COUNT(DISTINCT columna)   SUM()   AVG()   MIN()   MAX()   ROUND(x, 1)

SELECT columna, COUNT(*) FROM … WHERE … GROUP BY columna HAVING COUNT(*) > 2 ORDER BY … LIMIT …;
```

- **T15.** Resumen de la liga en una fila: partidos, goles locales, goles visitantes, media de goles
  por partido y máximo de goles en un partido.
```sql
select count(*) as num_partido, sum(goles_local), sum(goles_visitante), avg(goles_local + goles_visitante), max(goles_local + goles_visitante) from partido group by id_partido
```
- **T16.** Jugadores por equipo.
```sql
select id_quipo, count(id_equipo) from jugador group by id_equipo;
```
- **T17.** Goles por jornada.
```sql
select jornada, sum(goles_local + goles_visitante) from partido group by jornada;
```
- **T18.** ¿Qué sale con `SELECT posicion, nombre, COUNT(*) FROM jugador GROUP BY posicion;`? ¿Tiene
  sentido?
```sql
select posicion, count(*) from jugador group by posicion;
```
- **T19.** Jugadores (por número) con cuatro goles o más.
```sql
select id_jugador, count(id_jugador) as total_goles from gol group by id_jugador having total_goles >= 4
```

| A | B | C |
|---|---|---|
| Los cinco máximos goleadores, por número | Por posición: la fecha de nacimiento más antigua y la media de dorsal, con un decimal | ¿Cuántos jugadores distintos han marcado? |
| Goles por partido (contando en la tabla `gol`), los tres primeros | Goles marcados en casa por cada equipo | Años de nacimiento con cuatro jugadores o más |
| Ciudades con más de un equipo | Empates por jornada | Goles en la primera parte (minuto 20 o antes) y en la segunda |

Más: edad media por posición.

## Para pensar

¿Cómo se llama el máximo goleador? Con lo de hoy se puede, pero en dos consultas.

## Entrega individual

Cada uno, por su cuenta. Se entrega en Moodle, tarea «SQL 1 · Consultas a la liga», **antes de
la clase del viernes 6 de noviembre**.

- Un solo fichero, `apellido-nombre.sql`.
- Encima de cada consulta, un comentario con la pregunta y cuántas filas salen:
  `-- I2 · ¿Cuántos jugadores de mi equipo nacieron en 2000 o después? · 1 fila`
- Solo con lo visto hoy: sin `JOIN` ni subconsultas.
- Cada uno trabaja con **su equipo de la liga**, el que le ha tocado en clase (está en Moodle).
  Abajo, `X` es el número de ese equipo.

| # | Pregunta |
|---|---|
| I1 | Los jugadores de tu equipo con nombre, posición, dorsal y edad hoy, ordenados por dorsal |
| I2 | ¿Cuántos jugadores de tu equipo nacieron en el año 2000 o después? |
| I3 | Los partidos de tu equipo, de local o de visitante, ordenados por jornada, con una columna `resultado` que diga `ganado`, `empatado` o `perdido` **para tu equipo** |
| I4 | ¿Cuántos goles ha marcado tu equipo en casa? ¿Y fuera? Si sale algo raro, explica por qué en un comentario |
| I5 | El jugador de tu equipo que más goles ha marcado: su número y sus goles. Los números de tu equipo los tienes en I1 |
| I6 | Una pregunta tuya sobre la liga, que use `GROUP BY` o una función. Escribe la pregunta, la consulta y, en un comentario, qué devuelve |

Además, en el mismo fichero, las dos tandas en paralelo (A, B o C) que no hiciste en clase.