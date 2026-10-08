# Guion de la presentación · Equipo Castores
**Duración total: unos 10 minutos · 4 personas · 17 diapositivas**

| Persona | Diapositivas | Tema | Tiempo aprox. |
|---|---|---|---|
| **Bruno** | 1 a 4 | Introducción, organización y resultado | 2:10 |
| **Javier** | 5 a 8 | Parte técnica: configuración, SO, decisiones y pruebas | 2:35 |
| **Ivan** | 9 a 12 | Inventario y propuesta de digitalización | 2:35 |
| **Marcos** | 13 a 17 | Lenguajes de marcas y cierre | 2:40 |

*Los tiempos son orientativos: ensayadlo con cronómetro. Hablad con calma (unas 140 palabras por minuto) y aprended las ideas, no las frases literales.*

---

## Bruno · Diapositivas 1 a 4

**Diapositiva 1 · Portada (0:25)**
Buenos días a todos. Somos el equipo Castores, de 1º de ASIR, y os presentamos el Reto 0: la recuperación y digitalización del parque informático del centro. Yo os cuento de dónde partimos y qué hemos conseguido. Después mis compañeros explicarán la parte técnica, el inventario y los lenguajes de marcas.

**Diapositiva 2 · Índice (0:25)**
Este es el índice del proyecto: análisis del material, configuración, decisiones técnicas, montaje, sistema operativo y base de datos. Para trabajar usamos un tablero Kanban con tres columnas: pendiente, en curso y finalizado. Además, rotamos los roles dentro del equipo y guardamos evidencias de cada fase: fotos, capturas y registros de pruebas.

**Diapositiva 3 · Organización del proyecto (0:55)**
Partíamos de material de distintas generaciones, con algunos equipos averiados o incompletos. Teníamos tres problemas. Primero, no sabíamos en qué estado estaba cada pieza. Segundo, tampoco qué era compatible con qué. Y tercero, no existía ningún registro de las intervenciones. Con esto nos marcamos cuatro objetivos: recuperar al menos un equipo funcional, justificar las compatibilidades y el sistema operativo, crear un inventario en una base de datos y proponer una mejora digital realista.

**Diapositiva 4 · Equipo recuperado (0:25)**
Y este es el resultado: el equipo EQ_00 funcionando. A la izquierda, el interior ya montado. En el centro, la prueba de carga con FurMark en pantalla. Y a la derecha, CPU-Z identificando el procesador. Es decir, el equipo arranca y aguanta la carga. Ahora mi compañero os explica cómo está configurado y qué decisiones técnicas tomamos.

> **Frase clave:** partíamos sin saber qué había, y hemos conseguido un equipo funcional y documentado.

---

## Javier· Diapositivas 5 a 8

**Diapositiva 5 · Configuración EQ_00 (0:25)**
El EQ_00 monta un procesador Athlon 3000G, 8 GB de RAM DDR4 a 3200 MHz y un SSD de 128 GB SATA3. La placa base es una Gigabyte A520M K V2, con un disipador Wraith Stealth para el socket AM4, y todo va en una caja AC4500 con fuente APIII500.

**Diapositiva 6 · Sistema operativo (0:45)**
Al instalar Linux Mint tuvimos problemas de arranque, así que decidimos cambiar el sistema a Windows 11. Para preparar el ssd, arrancamos Hiren's Boot desde un USB y limpiamos las particiones con diskpart, una herramienta de consola. Después flasheamos la ISO de Windows 11 en el USB e instalamos el sistema. La instalación se completó correctamente.

**Diapositiva 7 · Decisiones técnicas (0:55)**
Tomamos cinco decisiones. Uno: actualizamos la BIOS a la última versión, para que si se instala un procesador de la serie 5000 no haya problemas de compatibilidad. Dos: usamos Ventoy, que se instala una vez en el pendrive y después solo hay que copiar las ISO; así preparamos varios equipos con distintos sistemas. Tres: arrancamos Hiren's Boot desde el USB por los repetidos problemas con el SSD, que hacían que no hubiera imagen. Cuatro: las pruebas con FurMark, Afterburner y CPU-Z, que veremos ahora. Y cinco: Utilizamos Web3Forms para que el formulario sea funcional, ya que al no tener un backend no podriamos hacer funcional el formulario y asi al darle al boton de enviar nos llega el email al equipo

**Diapositiva 8 · Pruebas (0:30)**
Para comprobar que el equipo aguanta, usamos FurMark, que pone los componentes al máximo, y MSI Afterburner y CPU-Z para vigilar las temperaturas mientras tanto. Estas capturas son la evidencia de las pruebas. Paso la palabra a mi compañera, que os cuenta cómo organizamos toda la información.

> **Frase clave:** Mint porque es gratis y ligero; cinco decisiones: BIOS, Ventoy, Hiren's, pruebas y Web3Forms.

---

## Iván · Diapositivas 9 a 12

**Diapositiva 9 · Sistema de inventario: diagrama (0:35)**
Para organizar la información creamos una base de datos de inventario. Tiene siete entidades: equipos, componentes, ubicaciones, estados, incidencias, intervenciones y sistemas operativos, y este diagrama muestra cómo se relacionan. Guarda el historial de componentes de cada equipo y usa restricciones para evitar duplicados.

**Diapositiva 10 · Sistema de inventario: datos (0:30)**
Aquí vemos el inventario con datos reales del material analizado; en este ejemplo, las tarjetas gráficas, con su marca, modelo, tipo y cantidad de memoria. 

**Diapositiva 11 · Digitalización 1/2 (0:55)**
Ahora, la propuesta de digitalización: incorporar tecnología para ser más eficientes. Proponemos cinco mejoras. La primera, migrar la web a WordPress: ahora está en HTML, así que cualquier cambio obliga a tocar código, y con un gestor de contenidos se edita sin grandes conocimientos y se publica más rápido. La segunda, publicar el inventario en Internet de forma abierta, como el catálogo de la Universidad de Zaragoza: sus datos no son críticos, así que no hace falta VPN ni IP pública. La tercera, pasar de Google Sheets a PostgreSQL, que evita duplicados y rinde mejor con muchos datos.

**Diapositiva 12 · Digitalización 2/2 (0:35)**
La cuarta mejora es un identificador único para cada equipo y componente, que no cambie ni se repita y que asigna la base de datos. Y la quinta, control automático con RFID: cada equipo y componente lleva una etiqueta, y una zona de lectura en el acceso al inventario registra sola cada retirada o alta, sin intervención manual. Menos errores y menos olvidos. Termina mi compañero con la parte de lenguajes de marcas.

> **Frase clave:** siete entidades en la base de datos y cinco mejoras de digitalización.

---

## Marcos · Diapositivas 13 a 16

**Diapositiva 13 · Versiones de HTML (0:35)**
HTML nació en 1991 de la mano de Tim Berners-Lee. En 1995 llegó HTML 2.0, el primer estándar formal; en 1997, HTML 3.2 añadió tablas; en 1999, HTML 4.01 separó contenido y presentación con CSS; en 2000 apareció XHTML 1.0, que es HTML con las reglas de XML; y en 2014, HTML5, el estándar actual, con audio, vídeo y etiquetas semánticas.

**Diapositiva 14 · HTML vs XHTML (0:55)**
HTML es como una conversación entre amigos: aunque falte algo, el navegador adivina lo que querías decir. XHTML es como un contrato: las reglas son fijas y, si falta un cierre, el sistema rechaza el documento. Esto importa en nuestro inventario, porque lo lee un programa. El parser no adivina: ante un error, se detiene. XPath llega al dato exacto, por ejemplo los precios de una tabla. Y la validación previa filtra el código con un esquema XML antes de guardarlo.

**Diapositiva 15 · XHTML en gestión de datos (0:40)**
¿Se justifica esa sintaxis estricta? Sí, cuando la página la lee un programa. Los datos son más fiables, porque un error se detecta en vez de guardarse mal. Las consultas son exactas. La validación bloquea errores antes de llegar a la base de datos. Y al ser XML, otros sistemas lo procesan con herramientas estándar. En resumen: un error se detecta al instante, no cuando ya está en la base de datos.

**Diapositiva 16 · Ventajas de CSS (0:35)**
Por último, CSS. HTML aporta la estructura y el contenido, y CSS la presentación. Separarlos da mantenimiento más fácil, porque un cambio actualiza todas las páginas; coherencia en todo el sitio; rapidez, gracias a la caché; adaptación a móvil, pantalla o impresión; y accesibilidad. Podemos cambiar el diseño sin tocar el contenido.

> **Frase clave:** en XHTML un error se detecta al instante; con CSS se cambia el diseño sin tocar el contenido.

## Bruno - Diapositiva 17 (40 s)

PostgreSQL es un gestor de bases de datos que desarrolla la comunidad de código abierto PostgreSQL Global Development Group. Su historia empieza en 1986 con el proyecto POSTGRES, que nació como sucesor de INGRES. Después, dos estudiantes, Andrew Yu y Jolly Chen, le añadieron un intérprete de SQL y apareció Postgre95. En 1996 llegó el actual PostgreSQL, con compatibilidad total con SQL. Es gratuito y de código abierto, con una licencia propia parecida a MIT y BSD, y lo usan empresas como Apple, Spotify e Instagram.

Frase clave: 1986, 1995, 1996: POSTGRES, Postgre95, PostgreSQL.

## Javier - Diapositiva 18 (50 s)

PostgreSQL usa un modelo relacional y objeto-relacional: guarda los datos en tablas conectadas entre sí, y además admite JSON. Al ser relacional, hay que definir el esquema antes de guardar datos, con comandos SQL. Funciona con el modelo cliente-servidor: un servidor administra los archivos y los clientes se conectan a él. Puede copiar los datos a otras máquinas, lo que se llama replicación, o repartir una base muy grande entre varias, lo que se llama fragmentación. Funciona en Linux, Windows, macOS, UNIX y BSD, y hoy se instala sobre todo en contenedores como Docker o Kubernetes.

Frase clave: relacional, esquema fijo, cliente-servidor.

## Iván - Diapositiva 19 (45 s)

Como gestor, usa SQL. Por ejemplo, para pedir el equipo EQ-04 hacemos un SELECT sobre la tabla equipo filtrando por su etiqueta. Tiene transacciones y cumple ACID del todo: atomicidad, consistencia, aislamiento y durabilidad. Para la concurrencia usa MVCC, que permite que varios usuarios lean y escriban a la vez sin bloquearse. Tiene usuarios y roles con permisos granulares sobre cada objeto de la base de datos. Y para administrarlo, herramientas gráficas como pgAdmin, que funciona en Windows, Linux y macOS.

Frase clave: SQL, ACID del todo, roles con permisos, pgAdmin.

## Marcos - Diapositiva 20 (55 s)

Destaca por su tolerancia a fallos, su alto rendimiento y su facilidad de monitorización. Como limitación, tiene campos de hasta 1 GB y puede saturarse con muchas conexiones a la vez. Para el inventario del aula sí serviría: ofrece integridad de datos y concurrencia, aunque es complejo para personal inexperto. En la prueba creamos la tabla equipo, con la etiqueta como clave primaria, insertamos EQ-01 y EQ-04 y consultamos por aula. El último INSERT repite EQ-01 y da error, porque el identificador es único y no se puede repetir. Es la regla de la teoría sobre atributos identificadores y claves.
Frase clave: el INSERT falla porque la clave primaria no se puede repetir.


---

## Posibles preguntas (¿quién responde?)

- **¿Por qué Linux Mint y no Windows 11?** *(Persona 2)* Es gratis, necesita pocos recursos y no exige TPM ni Secure Boot, algo realista con placas de esta generación.
- **¿Por qué actualizar la BIOS?** *(Persona 2)* Para que, si se instala un procesador de la serie 5000, no haya problemas de compatibilidad.
- **¿Por qué Ventoy y Hiren's Boot?** *(Persona 2)* Ventoy: un USB para varias ISO. Hiren's: por los problemas repetidos con el SSD, que hacían que no hubiera imagen.
- **¿Por qué Web3Forms?** *(Persona 2)* No tenemos backend propio ni base de datos donde guardar los datos de los formularios.
- **¿Por qué PostgreSQL en vez de Google Sheets?** *(Persona 3)* Las hojas de cálculo dan duplicados y pierden rendimiento al crecer; PostgreSQL es estable y atiende muchas consultas a la vez.
- **¿Qué aporta el RFID?** *(Persona 3)* Registra solo las entradas y salidas, sin errores ni olvidos del registro manual.
- **¿Por qué publicar el inventario abierto?** *(Persona 3)* Los datos no son críticos, y así no hace falta VPN ni IP pública.
- **¿Para qué sirve la sintaxis estricta de XHTML?** *(Persona 4)* Porque un programa lee la página: el error se detecta al momento y se valida antes de guardar.
- **¿Qué ventaja da CSS?** *(Persona 4)* Cambiar el diseño en un único archivo, sin tocar el contenido de cada página.
- **¿Cómo os organizasteis?** *(Persona 1)* Con un tablero Kanban, roles rotativos y evidencias en cada fase.

Guion de las 4 diapositivas de PostgreSQL (unos 3 minutos en total)