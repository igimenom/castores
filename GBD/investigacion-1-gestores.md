# GBD · Investigación 1 · Gestores de bases de datos

Cada equipo investiga un gestor de bases de datos, lo prueba y lo presenta a la clase. Entre todos
se completa la tabla que compara los cinco. Es la **fase 1 del reto** y su entregable **E2**.

La teoría que hay que tener delante está en `teoria-1-introduccion-bd.md`: apartados 3 (qué hace un
gestor), 4 (modelos de datos), 5 (dónde vive) y 6 (clasificación).

## Reparto

| Equipo | Gestor | Web oficial |
|---|---|---|
| bordalas | MariaDB | [mariadb.org](https://mariadb.org) |
| castores | PostgreSQL | [postgresql.org](https://www.postgresql.org) |
| equipo-a | SQLite | [sqlite.org](https://www.sqlite.org) |
| gguiu | MongoDB | [mongodb.com](https://www.mongodb.com) |
| rockfm | Redis | [redis.io](https://redis.io) |
| El primero que acabe | Oracle Database | [oracle.com/database](https://www.oracle.com/database/) |

## Reglas

- **Fuente principal: la web o la documentación oficial.** Wikipedia, blogs y asistentes de IA
  sirven para orientarse, pero cada dato de la ficha tiene que poder comprobarse en una fuente que
  apuntáis.
- **Con vuestras palabras.** En la presentación os preguntaremos por cualquier campo a cualquiera
  del equipo.
- **Si algo no lo encontráis o no lo entendéis, se escribe así**: «no lo hemos encontrado» vale
  más que un dato inventado.

## Qué hay que entregar

En la carpeta `bd/` de vuestro repositorio, un fichero `E2-ficha-gestor.md` con la plantilla de
abajo rellena, y la captura de la prueba (`E2-prueba.png`).

**Plazo:** lunes 28 de septiembre (S3L), antes de la puesta en común. En clase hay 25 minutos para
terminarla.

## La ficha

Copiad esta plantilla en `bd/E2-ficha-gestor.md` y rellenadla. Entre paréntesis, dónde está la
teoría en `teoria-1-introduccion-bd.md`.

```markdown
# Ficha del gestor: NOMBRE

Equipo: … · Integrantes: …

## 1. Qué es

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 1 | Quién lo desarrolla y desde cuándo. ¿Nació de otro producto? | | |
| 2 | Licencia: libre o de pago. Cuál exactamente. ¿Hay versión gratuita? ¿Ha cambiado de licencia? (apartado 6) | | |
| 3 | Dos empresas u organizaciones conocidas que lo usan | | |

## 2. Cómo guarda los datos

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 4 | Modelo de datos: relacional (tablas), documental, clave-valor, columnar, de grafos… (apartado 4) | | |
| 5 | Cómo quedaría el equipo EQ-04, con sus dos módulos de RAM, guardado en este gestor. Un dibujo o un ejemplo | | |
| 6 | ¿Hay que definir la estructura antes de guardar datos (esquema fijo) o no? | | |

## 3. Dónde vive

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 7 | Dentro de la aplicación (embebido), en un servidor al que se conectan los clientes, o como servicio en la nube (apartado 5.1) | | |
| 8 | ¿Puede repartir o copiar los datos entre varias máquinas? ¿Cómo se llama eso en este gestor? (apartado 5.2) | | |
| 9 | Sistemas operativos en los que funciona | | |

## 4. Qué ofrece como gestor

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 10 | Lenguaje: ¿SQL u otro? Un ejemplo de cómo se pide «el equipo EQ-04» (apartado 3.3) | | |
| 11 | ¿Tiene transacciones? ¿Cumple ACID del todo, en parte o no? (apartado 3.2) | | |
| 12 | ¿Tiene usuarios y permisos propios? (apartado 3.4) | | |
| 13 | Una herramienta gráfica para administrarlo o consultarlo | | |

## 5. Valoración

| # | Campo | Respuesta |
|---|---|---|
| 14 | Para qué destaca | |
| 15 | Una limitación importante | |
| 16 | Clasificación: por modelo, por ubicación y por licencia (apartado 6) | |
| 17 | ¿Serviría para el inventario del aula? ¿Por qué sí o por qué no? | |

## 6. La prueba

Qué hicimos, qué salió y qué nos llamó la atención (tres o cuatro líneas). Captura en `E2-prueba.png`.
```

## La prueba

No hace falta saber SQL: cada gestor tiene aquí unas líneas preparadas para copiar y pegar en una
web donde se puede probar sin instalar nada. Lo que interesa es **ver qué pasa** y contarlo.

### MariaDB, PostgreSQL y SQLite (relacionales)

Web para probarlo: [dbfiddle.uk](https://dbfiddle.uk) (eligiendo vuestro gestor en el desplegable)
o, para SQLite, [sqliteonline.com](https://sqliteonline.com).

```sql
CREATE TABLE equipo (
  etiqueta VARCHAR(10) PRIMARY KEY,
  aula     VARCHAR(20),
  ram_gb   INT
);
INSERT INTO equipo VALUES ('EQ-01', '1.12', 8);
INSERT INTO equipo VALUES ('EQ-04', 'Taller', 8);
SELECT * FROM equipo WHERE aula = '1.12';

-- Y ahora, un segundo EQ-01:
INSERT INTO equipo VALUES ('EQ-01', 'Taller', 4);
```

Preguntas: ¿qué devuelve el `SELECT`? ¿Qué pasa con el último `INSERT`, y por qué? ¿Qué regla de
la teoría es esa?

### MongoDB (documental)

Web para probarlo: [mongoplayground.net](https://mongoplayground.net). A la izquierda van los datos;
en el centro, la consulta.

Datos:

```json
[
  { "_id": "EQ-01", "aula": "1.12",
    "ram": [ { "gb": 4, "tipo": "DDR3" }, { "gb": 4, "tipo": "DDR3" } ] },
  { "_id": "EQ-04", "aula": "Taller",
    "ram": [ { "gb": 8, "tipo": "DDR4" } ] }
]
```

Consulta:

```js
db.collection.find({ "aula": "1.12" })
```

Preguntas: ¿dónde están los módulos de RAM? En una base de datos relacional, ¿estarían ahí? Añadid
a los datos un tercer equipo con un campo que los otros no tienen (`"fuente_w": 350`): ¿protesta?

### Redis (clave-valor)

Web para probarlo: la documentación oficial de cada comando en [redis.io](https://redis.io/docs/latest/commands/)
tiene ejemplos que se pueden ejecutar; si no os funciona, buscad una consola de Redis en línea y
decid cuál habéis usado.

```text
HSET equipo:EQ-01 aula 1.12 ram_gb 8
HSET equipo:EQ-04 aula Taller ram_gb 8
HGETALL equipo:EQ-04
```

Preguntas: ¿cómo se recupera un equipo? ¿Cómo buscaríais todos los equipos del aula 1.12?

### Oracle Database (comodín)

Web para probarlo: [dbfiddle.uk](https://dbfiddle.uk), eligiendo Oracle, con el mismo código que los
relacionales. Oracle también tiene su propia web de pruebas, Oracle Live SQL, que pide crear una
cuenta.

## Cómo se presenta (lunes, S3L)

**4 minutos por equipo.** Se leen los campos 4, 7, 2 y 10, y se enseña la prueba. Mientras, entre
todos se rellena en la pizarra esta tabla:

| Gestor | Modelo | Dónde vive | Licencia | Lenguaje | ACID | ¿Para el inventario? |
|---|---|---|---|---|---|---|
| MariaDB | | | | | | |
| PostgreSQL | | | | | | |
| SQLite | | | | | | |
| MongoDB | | | | | | |
| Redis | | | | | | |
| Oracle | | | | | | |

Con la tabla completa se contesta a la pregunta del reto: **¿por qué el inventario del aula va en
MariaDB?**

---

Última actualización: 25 de septiembre de 2026.
