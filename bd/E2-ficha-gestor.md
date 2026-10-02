# Ficha del gestor: PostgreSQL

Equipo: Castores · Integrantes: Bruno, Javier, Iván y Marcos.

## 1. Qué es

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 1 | Quién lo desarrolla y desde cuándo. ¿Nació de otro producto? | Lo desarrolla la comunidad de código abierto PostgreSQL Global Develpmoent Group desde 1996. Primero, el proyecto POSTGRES (1986), que nació como sucesor del sistema INGRES. Posteriormente, unos estudiantes Andrew Yu y Jolly Chen agregaron unn intérprete  de lenguaje SQL, creando Postgre95. Finalmente, en 1996 llega el actual PostgreSQL con total compatbilidad a SQL. | https://www.todopostgresql.com/preguntas-y-respuestas-sobre-postgresql/ |
| 2 | Licencia: libre o de pago. Cuál exactamente. ¿Hay versión gratuita? ¿Ha cambiado de licencia? (apartado 6) | PostgreSQL es gratuito y de código abierto. Su licencia es PostgreSQL License similar a las MIT/BSD.  | https://www.postgresql.org/about/licence/ |
| 3 | Dos empresas u organizaciones conocidas que lo usan | Apple, Spotify, Instagram, Uber, NASA o Reddit. | |

## 2. Cómo guarda los datos

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 4 | Modelo de datos: relacional (tablas), documental, clave-valor, columnar, de grafos… (apartado 4) |  utiliza principalmente un modelo de datos relacional y objeto-relacional, lo que significa que organiza la información en tablas conectadas entre sí, pero además permite manejar características avanzadas de orientación a objetos (como herencia de tablas y tipos personalizados) y soporta datos semiestructurados (como JSON). | https://www.databricks.com/es/blog/what-is-postgresql-database |
| 5 | Cómo quedaría el equipo EQ-04, con sus dos módulos de RAM, guardado en este gestor. Un dibujo o un ejemplo | | |
| 6 | ¿Hay que definir la estructura antes de guardar datos (esquema fijo) o no? | Sí, al ser un sistema relacional requiere esquema fijo previa definición mediante comandos SQL | https://www.postgresql.org/docs/current/ddl-basics.html |

## 3. Dónde vive

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 7 | Dentro de la aplicación (embebido), en un servidor al que se conectan los clientes, o como servicio en la nube (apartado 5.1) | Se puede ejecutar dentro de la aplicación, en un servidor centralizado o como servicio en la nube. **Embebido**: La base de datos es una "pieza" más dentro del código de tu app (útil si tu app no tiene internet o es offline). **Servidor**: Instalas Postgres en una máquina propia o de la empresa. Tú controlas todo, pero tú limpias, mantienes y arreglas si se rompe. **Nube**: Le pagas a un proveedor (AWS, Google, Azure) para que ellos cuiden el servidor por ti, y tú solo te dedicas a usar la base de datos. |||
| 8 | ¿Puede repartir o copiar los datos entre varias máquinas? ¿Cómo se llama eso en este gestor? (apartado 5.2) | Sí. Cuando necesitas que toda la base de datos se copie exactamente igual en otros servidores, el concepto técnico se llama *replicación*. . Si el objetivo es romper una base de datos masiva en múltiples servidores porque ya no cabe en uno, tu término es *fragmentación*.| |
| 9 | Sistemas operativos en los que funciona | Funciona en Linux, Windows, macOS, UNIX y BSD. Actualmente, lo más común es la instalación en contenedores tales como Docker o Kubernetes.| https://cloud.google.com/learn/postgresql-vs-sql?hl=es |

## 4. Qué ofrece como gestor

| # | Campo | Respuesta | Fuente (URL) |
|---|---|---|---|
| 10 | Lenguaje: ¿SQL u otro? Un ejemplo de cómo se pide «el equipo EQ-04» (apartado 3.3) | ``` SELECT * FROM equipos WHERE id = EQ-04 ``` | https://learnsql.es/blog/20-ejemplos-de-consultas-sql-basicas-para-principiantes-una-vision-completa/ |
| 11 | ¿Tiene transacciones? ¿Cumple ACID del todo, en parte o no? (apartado 3.2) | Sí, PostgreSQL tiene transacciones y cumple las reglas ACID (Atomicidad, Consistencia, Aislamiento y Durabilidad) del todo. Gestiona las transacciones mediante MVCC (Multiversion Concurrency Control); un método que usan las bases de datos para permitir que varios usuarios lean y escriban datos al mismo tiempo sin bloquearse entre sí. | |
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
