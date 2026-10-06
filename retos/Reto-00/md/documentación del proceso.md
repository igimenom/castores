# Grupo Castores S.L.
- [1. Introducción](#1-introducción)
    - [1.1. Descripción del proyecto](#11-descripción-del-proyecto)
    - [1.2. Objetivos del proyecto](#12-objetivos-del-proyecto)
- [2. Análisis del contexto y justificación de la propuesta](#2-análisis-del-contexto-y-justificación-de-la-propuesta)
- [3. Estado del arte](#3-estado-del-arte)
- [4. Requisitos del proyecto](#4-requisitos-del-proyecto)
    - [4.1. Requisitos funcionales](#41-requisitos-funcionales)
    - [4.2. Requisitos no funcionales](#42-requisitos-no-funcionales)
- [5. Planificación](#5-planificación)
    - [5.1. Fases del proyecto](#51-fases-del-proyecto)
    - [5.2. Cronograma de trabajo](#52-cronograma-de-trabajo)
    - [5.3. Recursos necesarios](#53-recursos-necesarios)
- [6. Desarrollo del proyecto](#6-desarrollo-del-proyecto)
    - [6.1. Análisis y diseño](#61-análisis-y-diseño)
    - [6.2. Tecnologías/Herramientas empleadas](#62-tecnologíasherramientas-empleadas)
    - [6.3. Partes contratantes](#63-partes-contratantes)
    - [6.4. Presupuesto](#64-presupuesto)
    - [6.5. OPCIONAL: Contrato y pliego de condiciones](#65-opcional-contrato-y-pliego-de-condiciones)
    - [6.6. OPCIONAL: Análisis de riesgos](#66-opcional-análisis-de-riesgos)
- [7. Pruebas y validación](#7-pruebas-y-validación)
- [8. Documentación técnica](#8-documentación-técnica)
- [9. Conclusiones](#9-conclusiones)
    - [9.1. Desviación sobre la planificación inicial](#91-desviación-sobre-la-planificación-inicial)
    - [9.2. Resultados obtenidos y posibles mejoras futuras](#92-resultados-obtenidos-y-posibles-mejoras-futuras)
    - [9.3. Valoración personal](#93-valoración-personal)
    - [9.4. OPCIONAL: Agradecimientos](#94-opcional-agradecimientos)
- [10. Bibliografía](#10-bibliografía)
- [11. Anexos](#11-anexos)
## 1. Introducción 
### 1.1. Descripción del proyecto
Este proyecto corresponde al Reto 0 de 1º de ASIR: Recuperación y digitalización del parque informático. El centro dispone de ordenadores, periféricos y componentes de distintas generaciones, algunos funcionales, otros averiados o incompletos, y no existe un registro fiable de qué hay, en qué estado está ni qué se ha hecho sobre cada equipo.

Nuestro equipo Castores formado por (Marcos, Iván, Javier y Bruno) debe estudiar el material, recuperar al menos un equipo plenamente funcional, documentar todo el proceso y crear un inventario digital basado en una base de datos propia. Además, debemos proponer cómo gestionar el parque informático de forma más eficiente mediante tecnologías digitales.
### 1.2. Objetivos del proyecto
El presente proyecto persigue como principal objetivo la puesta en valor del material informático disponible, con el fin de ensamblar un equipo plenamente funcional, al mismo tiempo que se lleva a cabo un proceso exhaustivo de organización e inventariado.

Para alcanzar esta meta, el desarrollo se estructurará en diversas fases interconectadas. En primer lugar, se procederá a la identificación, catalogación y evaluación técnica de todos los recursos físicos existentes, abarcando equipos, componentes y periféricos. Este análisis minucioso permitirá determinar con precisión qué elementos son susceptibles de ser recuperados, reutilizados o reparados, y cuáles, por el contrario, deberán ser descartados de manera definitiva.

Una vez clasificado el material, la labor técnica se centrará en el montaje o la reparación de, como mínimo, un sistema informático operativo. Dicha intervención requerirá una justificación técnica rigurosa que acredite la compatibilidad de los componentes seleccionados. Posteriormente, se abordará la dotación de software mediante la elección, instalación y configuración del sistema operativo más adecuado para el hardware ensamblado, argumentando sólidamente esta decisión frente a otras alternativas disponibles.

De manera transversal a estas tareas, la gestión de los recursos quedará respaldada por el diseño y la implementación de una base de datos para el control del inventario, la cual se alimentará con datos reales y estará optimizada para la ejecución de consultas de valor práctico. Asimismo, el rigor documental del proyecto se asegurará mediante el registro continuo de todas las intervenciones y la conservación de evidencias del progreso a través de la metodología Kanban.

Finalmente, la ejecución de todas estas actividades se sustentará en un modelo de trabajo en equipo estrictamente organizado, cuyo propósito pedagógico y colaborativo es garantizar que cada uno de los integrantes adquiera un dominio integral sobre la totalidad de las competencias y áreas abordadas durante el reto.


## 2. Análisis del contexto y justificación de la propuesta 
Situación de partida. El centro cuenta con material informático con mucha diferencia de antigüedad. Por lo que nos resulta difícil saber qué material hay, en qué estado está, qué características tiene, qué componentes son compatibles entre sí y qué equipos son recuperables.

No se trata solo de un problema técnico como reparar ordenadores, sino de gestión de la información: sin un registro fiable se duplican esfuerzos, se pierde material aprovechable y no se pueden tomar las decisiones correctas.

Justificación. Una solución que combine (1) la recuperación práctica de un equipo, (2) un inventario en base de datos y (3) una propuesta de digitalización:

Aprovecha recursos ya existentes, reduciendo costes y residuos electrónicos que contaminarian el ecosistema.
Deja una marca de cada equipo, componente e intervención.
Permite a la persona responsable responder preguntas como qué equipos se pueden usar, qué material está disponible o qué equipos tienen incidencias pendientes o se tienen que llevar para reciclarlos al punto limpio o similares.
Es mantenible en el tiempo, porque la información queda estructurada y no depende de la memoria de nadie y hace mas fácil cuando haya que actualizarlo con nuevos componentes.

## 3. Estado del arte 
Gestión de activos informáticos (ITAM/CMDB): conceptos de inventario de hardware, ciclo de vida del equipo y trazabilidad.

Herramientas habituales de código abierto: GLPI, Snipe-IT, OCS Inventory / Fusion Inventory, NetBox. Comparar qué ofrece cada una (inventario, incidencias, agentes automáticos, coste, complejidad).

Recuperación y reutilización de hardware: criterios de compatibilidad (socket, chipset, tipo de RAM, fuente de alimentación, interfaces de almacenamiento, BIOS/UEFI), diagnóstico (POST, pruebas de RAM utilizando Memtest86, SMART de discos) y reacondicionamiento.

Sistemas operativos para hardware antiguo o limitado: distribuciones Linux ligeras (Lubuntu, Xubuntu, Linux Mint XFCE, entorno ligero), frente a Windows 10/11 (requisitos como TPM 2.0 y UEFI) u otras opciones.

Bases de datos relacionales: modelo entidad-relación, normalización, y motores como MySQL/MariaDB, PostgreSQL o SQLite.

Herramientas de organización de proyectos: tableros Kanban (Trello, Planka, GitHub Projects, Notion).

Sostenibilidad y protección de datos: reutilización frente a residuo electrónico (RAEE) y borrado seguro de dispositivos (normativa de protección de datos, RGPD).

## 4. Requisitos del proyecto
### 4.1. Requisitos funcionales
1. Identificar de forma única cada equipo, componente y periférico (código de inventario/etiqueta).
2. Registrar características técnicas y estado de cada componente. 
3. Registrar qué componentes forman parte de cada equipo y sus cambios (historial de montaje).
4. Registrar incidencias detectadas e intervenciones realizadas (fecha, responsable, descripción, resultado).
5. Registrar los sistemas operativos instalados en cada equipo.
6. Consultar mediante HTML: equipos utilizables, material disponible, equipos con incidencias pendientes, componentes de un equipo concreto, historial de actuaciones, sistemas operativos instalados, equipos mejorables y material reutilizable.
7. Obtener al menos un equipo plenamente funcional con SO instalado y configurado.
8. Evitar inconsistencias y duplicidades en los datos (claves, restricciones, normalización).
9. Trabajar con datos reales del material analizado.
### 4.2. Requisitos no funcionales 
1. Usabilidad: el inventario debe poder ser consultado por una persona responsable sin conocimientos avanzados.
2. Integridad y coherencia: uso de claves primarias/foráneas y restricciones.
3. Mantenibilidad y escalabilidad: poder añadir nuevo material sin rediseñar la base de datos.
4. Trazabilidad: todo cambio de componentes o configuración queda registrado.
5. Seguridad y protección de datos: no borrar almacenamiento sin autorización; avisar al profesorado ante datos personales; copias de seguridad de la base de datos.
6. Seguridad física y laboral: no manipular equipos conectados a la corriente y usar protección antiestática.
7. Documentación: todas las decisiones justificadas técnicamente y las fuentes citadas.
8. Realismo y economía: priorizar la reutilización y software libre, sin sobrecargar de tecnologías.
9. Organización: puesto y material ordenados al terminar cada sesión.
1. Usabilidad: el inventario debe poder ser consultado por una persona responsable sin conocimientos avanzados.
2. Integridad y coherencia: uso de claves primarias/foráneas y restricciones.
3. Mantenibilidad y escalabilidad: poder añadir nuevo material sin rediseñar la base de datos.
4. Trazabilidad: todo cambio de componentes o configuración queda registrado.
5. Seguridad y protección de datos: no borrar almacenamiento sin autorización; avisar al profesorado ante datos personales; copias de seguridad de la base de datos.
6. Seguridad física y laboral: no manipular equipos conectados a la corriente y usar protección antiestática.
7. Documentación: todas las decisiones justificadas técnicamente y las fuentes citadas.
8. Realismo y economía: priorizar la reutilización y software libre, sin sobrecargar de tecnologías.
9. Organización: puesto y material ordenados al terminar cada sesión.
## 5. Planificación
### 5.1. Fases del proyecto
# Memoria de Trabajo: Puesta a Punto e Inventario de Equipos

---

## 1. Fase 1: Organización del Equipo y Gestión del Proyecto

En la etapa inicial nos enfocamos en estructurar la metodología de trabajo. **Iván** asignó los roles y redactó el documento organizador para la distribución de tareas, mientras **Bruno** diseñó el logo del equipo.

Para la gestión y el seguimiento continuo, **Iván** configuró el repositorio en GitHub y, junto a **Bruno** y **Javier**, pusimos en marcha un tablero Kanban. En el apartado de inventario, **Marcos**, **Bruno** e **Iván** registraron en Excel el material de la sala R4, tanto ordenadores como componentes guardados en estanterías (fuentes de alimentación, ventiladores, tarjetas gráficas y memorias RAM). 

---

## 2. Fase 2: Desmontaje, Inspección Física y Hardware

El trabajo práctico comenzó con el desmontaje e identificación de los componentes. Durante esta fase, **Bruno** realizó la limpieza y el mantenimiento de las piezas.

### Incidencia en el Desmontaje: Procesador pegado al Disipador
**Problema:** Al intentar retirar el disipador de la CPU, el procesador se quedó completamente pegado a la base debido al estado de la pasta térmica.

**Solución:** Se utilizó un secador para aplicar calor de forma directa en el bloque y ablandar la pasta. Una vez caliente la zona, se hizo palanca con cuidado utilizando un destornillador plano hasta lograr desenganchar la CPU sin causar ningún daño a los pines.

Durante el proceso, Javier tomó las fotos de cada componente, Marcos redactó la descripción detallada de cada una e Iván se encargó de renombrar las imágenes. Con el hardware al descubierto, **Bruno** recopiló los *datasheets* y especificaciones oficiales, permitiendo a **Iván** diseñar la matriz de compatibilidad. Una vez documentado el proceso, **Marcos** reensambló el equipo. Posteriormente, **Javier** y **Marcos** repitieron el procedimiento de identificación de componentes en dos ordenadores adicionales de la sala R4.

---

## 3. Fase 3: Puesta a Punto, Pruebas y Desarrollo Web

### Configuración del Sistema y Solución de Problemas
Inicialmente, **Iván** preparó un USB ejecutable con Ventoy y Linux Mint. **Javier** actualizó la BIOS a la última versión disponible y activó el perfil XMP en la placa base para exprimir el rendimiento de la memoria RAM.

![BIOS](./Documentación/img/Imagen%20de%20la%20bios%20del%20ordenador.jpg)
![Especificaciones Linux](./Documentación/img/Especificaciones%20desde%20Linux.jpg)

Debido a problemas de arranque con Linux Mint, decidimos cambiar el sistema a Windows 11. Para preparar el disco duro, booteamos **Hiren's Boot** desde un USB y limpiamos las particiones utilizando la herramienta de consola diskpart. Posteriormente, flasheamos la ISO de Windows 11 e instalamos el sistema correctamente.

Para validar la estabilidad del equipo, **Marcos** y **Javier** ejecutaron pruebas de rendimiento y diagnóstico:
* **OCCT & HWInfo:** Monitorización térmica y comprobación de voltajes en la CPU.
* **CPU-Z / GPU-Z:** Pruebas de rendimiento (*benchmark*) de procesador y tarjeta gráfica.
* **Memtest64:** Test de diagnóstico de estabilidad para la memoria RAM.
* **Unigine Heaven:** Test de estrés para evaluar el rendimiento gráfico.
* **CrystalDiskInfo:** Análisis del estado de salud y errores del disco duro.

### Desarrollo y Maquetación Web
**Bruno** e **Iván** diseñaron los bocetos iniciales (*mockups*). **Marcos** definió el árbol de la web (*web tree*) para organizar la estructura de las páginas HTML, mientras que **Javier** migró las tablas de Excel e inventario a código HTML y creó las secciones del equipo. El diseño visual se maquetó entre **Bruno**, **Javier** e **Iván** utilizando CSS. Finalmente, el equipo optimizó el código limpiando etiquetas innecesarias, **Marcos** adaptó la matriz de compatibilidad a formato HTML e **Iván** y **Javier** ajustaron la estructura general y el pie de página 

Para cerrar esta fase, **Marcos** y **Bruno** desarrollaron el Diagrama Entidad-Relación (E/R), **Javier** redactó el informe de incidencias y **Bruno** preparó la presentación final.

### Bases de Datos y Documentación Final
En el apartado de gestión de datos, **Marcos** y **Bruno** desarrollaron el Diagrama Entidad-Relación del proyecto. Por su parte, **Javier** redactó el informe de incidencias y **Bruno** preparó el material para la presentación final.

---

## 4. Resumen Técnico de Intervenciones

* **Material e Instrumental:** Destornilladores (plano y estrella), secador de aire caliente y memorias USB de instalación.
* **Sistemas y Herramientas Utilizadas:** Ventoy, Linux Mint, Windows 11, Hiren's Boot (`diskpart`), OCCT, CPU-Z, GPU-Z, Memtest64, HWInfo, Unigine Heaven y CrystalDiskInfo.
* **Principales Decisiones:** Migración a Windows 11 LTSC tras fallos de arranque en Linux, formateo profundo con `diskpart` y activación del perfil XMP en la BIOS.

### 5.2. Cronograma de trabajo 
[Kanban](https://github.com/users/igimenom/projects/1/views/1)
[Kanban](https://github.com/users/igimenom/projects/1/views/1)
### 5.3. Recursos necesarios 
Humanos: equipo de 4 compañeros y profesorado como supervisión.
Hardware: equipos, componentes y periféricos del centro; herramientas de montaje (destornilladores, boligrafo probador de voltaje), equipo de prueba (monitor y teclado) y USB para instalar el sistema operativo.
Software: sistema operativo primeramente siendo linux y despues para realizar mas benchmarks instalamos windows 11 pro, herramientas de modelado (draw.io), Kanban, herramientas de diagnóstico (MemTest86, smartctl…) y un repositorio compartido para la documentación.
Espacio: aula y taller de inventario con puestos ordenados y zona de almacenamiento del material.
Humanos: equipo de 4 compañeros y profesorado como supervisión.
Hardware: equipos, componentes y periféricos del centro; herramientas de montaje (destornilladores, boligrafo probador de voltaje), equipo de prueba (monitor y teclado) y USB para instalar el sistema operativo.
Software: sistema operativo primeramente siendo linux y despues para realizar mas benchmarks instalamos windows 11 pro, herramientas de modelado (draw.io), Kanban, herramientas de diagnóstico (MemTest86, smartctl…) y un repositorio compartido para la documentación.
Espacio: aula y taller de inventario con puestos ordenados y zona de almacenamiento del material.

## 6. Desarrollo del proyecto
### 6.1. Análisis y diseño
[Análisis del material](../Página%20web/html/Página_principal.html).

[Compatibilidad del equipo recuperado](../Página%20web/html/matrizCompatibilidad.html).

[Diseño de la base de datos](../Página%20web/html/Página_principal.html).

### 6.2. Tecnologías/Herramientas empleadas
* Gestión de tareas: Github Projects Kanban.
* Modelado: Draw.io.
* Sistema Operativo: Linux Mint y Windows 11.
* Diagnóstico: MemTest86, Cpu-X, Furmark, HWinfo64, Msiafterburner.
* Documentación y evidencias: Github, drive compartido, fotos. 
### 6.3. Partes contratantes
Al ser un proyecto académico, no hay contratación real, pero se identifican las partes:

* *Cliente*: Campus Digital
* Equipo desarrollador: Grupo Castores (Marcos, Iván, Javier, Bruno), alumnado de 1º de ASIR.
* Supervisión: Abraham Bartolomé Hernández, David Gascueña Ferre, María José González Naya, Javier Orna Sáez.
### 6.4. Presupuesto
Para este proyecto no podemos gastar ni un solo euro, hay que acudir al material ya existente y a software o servicios gratuitos.
### 6.6. OPCIONAL: Análisis de riesgos
| Riesgo | Probabilidad | Impacto | Medida de mitigación |
| :--- | :--- | :--- | :--- |
| **Componentes incompatibles o defectuosos** | Media | Alto | Verificar especificaciones y probar con componentes conocidos |
| **Daño por electricidad estática** | Media | Alto | Pulsera antiestática, manipulación correcta |
| **Encontrar datos personales en discos** | Baja | Alto | No acceder, avisar inmediatamente al profesorado |
| **Pérdida de datos del inventario** | Baja | Alto | Copias de seguridad, claves y restricciones |
| **Desigual conocimiento en el equipo** | Media | Alto | Rotación de roles y que los que más sepan de ese tema ayuden al principio a los que no lo habían hecho antes |

## 7. Pruebas y validación
### Pruebas de hardware:
![Actualizar la BIOS](./Documentación/img/bios.jpeg)
Actualizar la BIOS
![Inicio Linux Mint](./Documentación/img/linux_mint.jpeg)
Inicio Linux Mint
![Instalación de Linux Mint](./Documentación/img/instalacion.jpeg)
Instalación de Linux Mint
![Elección de idioma en Linux Mint](./Documentación/img/IMG_2286.jpeg).
Elección de idioma en Linux Mint
![Prueba de benchmark en furmark](./Documentación/img/benchmark.jpeg)
Prueba de benchmark en furmark
![Componentes en Cpu-X](./Documentación/img/cpu-x.jpeg)
Componentes en Cpu-X
![Benchmark en Cpu-X](./Documentación/img/cpux_slow.jpeg)
Benchmark en Cpu-X
![Foto Fps](./Documentación/img/foto_cpu.jpeg)
Foto Fps
![Furmark_knot](./Documentación/img/furmark_knot.jpeg)
Furmark_knot

![EQ_00 Funcionando](./Documentación/img/Ordenador%20en%20funcionamiento.jpg)
EQ_00 Funcionando
![Velocidad mhz ram](./Documentación/img/Velocidad%20RAM.jpg)
Velocidad mhz ram
![Temperaturas en la Bios](./Documentación/img/Temperaturas%20CPU.jpg)
Temperaturas en la Bios
## 8. Documentación técnica
[Ficha técnica del equipo recuperado](http://127.0.0.1:5500/Reto-00/P%C3%A1gina%20web/html/Inventario/equipo/EQ_00.html).
### Intervenciones del equipo
![Intervenciones del equipo](./Documentación/img/poniendo%20rj-45.jpeg)
![Intervenciones del equipo](./Documentación/img/poniendo%20ram.jpeg)
![Intervenciones del equipo](./Documentación/img/poniendo%20cable%20alimentacion.jpeg)
![Intervenciones del equipo](./Documentación/img/poniendo%20cable%20.jpeg)
![Intervenciones del equipo](./Documentación/img/destornillador.jpg)
## 9. Conclusiones
### 9.1. Desviación sobre la planificación inicial
Reconocer que hubo tanto tareas que se retrasaron como algunas que se adelantaron.

Por ejemplo, a la hora de desmontar el ordenador, tuvimos un problema; el disipador estaba pegado con la pasta térmica lo que provocó un retraso sobre la panificación inicial. Se documenta otro retraso; Linux dejó de arrancar y probamos a instalar Windows 11, sospechamos que el problema estaba en el disco duro debido a que el equipo se apaga al cabo de un rato encendido. Además, como se nos olvidó apuntar algunos componentes tuvimos que bajar una vez más a la sala de inventario.

Sin embargo otras tareas se adelantaron; tales como el árbol de la web o el prototipo (`mockup`).
### 9.2. Resultados obtenidos y posibles mejoras futuras
Hemos conseguido;
* inventariar equipos y componentes (Google Sheets)
* página web funcional con el inventario (HTML, CSS)
* diagrama e/r de los componentes y equipos (draw.io)
#### Propuesta de digitalización
El objetivo de la propuesta de didigtalización en un proyecto o empresa es el proceso donde éstas adoptan tecnologías digitales con el objetivo de mejorar su eficiencia y adaptandose a las nuevas necesidades del mundo digital.

En nuestro caso hemos propuesto una serie de mejoras futuras:

* Pasar el HTML a CMS para asi poder mantener más fácil y rápido la página y editar sin tener tantos conocimiento técnicos. 
* Subir la página a Internet para que se pueda acceder al inventario de forma sencilla. 
* Pasar la hoja de cálculo (Google Sheets) a una base de datos con PostgreSQL.
* Registrar cada equipo y componente con un identificador único (consistente en el tiempo). 
* Cada equipo y componente tiene una etiqueta RFID, y además la sala debería contar con una zona RFID en la entrada/salida de la zona de inventario. De esta forma, se registra cuando una persona retira o añade componentes nuevos gracias a su etiqueta.
### 9.3. Valoración personal
Este primer reto ha resonado mucho con el equipo; nos ha sido de gran utilidad para adaptarnos a esta nueva forma de trabajo más colaborativa y menos guiada con respecto a lo que estabamos acostumbrados. Como consecuencia, hemos forjado grandes lazos de amistad entre todos. Además hemos desarrollado la paciencia que tan necesaria ha sido para los integrantes de SMR, que tuvieron que cargarse con lo más técnico, mientras que, los exalumnos de Bachillerato colaboraron más en la parte creativa.
## 10. Bibliografía
* (HTML: Lenguaje de Marcado de Hipertexto | MDN, 2026)
* CSS | MDN. (2026, 11 septiembre). https://developer.mozilla.org/es/docs/Web/CSS
* Bartolomeh, A. (2026, 16 septiembre). Reto 1. Recuperación y digitalización del parque informático. GitHub. https://github.com/labartolomeh/ASIR-1-Retos/blob/main/00_Reto_0/00_Reto0_enuciado%20alumnos.mdu
* Anthropic. (s. f.). Claude. Claude. https://claude.ai/share/
* Montiel, O. (2022, 22 febrero). La guía para principiantes de Git y Github. freeCodeCamp.org. https://www.freecodecamp.org/espanol/news/guia-para-principiantes-de-git-y-github/
* colaboradores de Wikipedia. (2026, 14 septiembre). Base de datos. Wikipedia, la Enciclopedia Libre. https://es.wikipedia.org/wiki/Base_de_datos
* Extended Syntax | Markdown Guide. (s. f.). https://www.markdownguide.org/extended-syntax/
## 11. Anexos
### Anexo A
![Anexo A: fotografías del material y del proceso de montaje.](./Documentación/img/poniendo%20ssd.jpeg)
![Anexo A: fotografías del material y del proceso de montaje.](./Documentación/img/poniendo%20rj-45.jpeg)
![Anexo A: fotografías del material y del proceso de montaje.](./Documentación/img/poniendo%20ram.jpeg)
![Anexo A: fotografías del material y del proceso de montaje.](./Documentación/img/poniendo%20cable%20alimentacion.jpeg)
![Anexo A: fotografías del material y del proceso de montaje.](./Documentación/img/poniendo%20cable%20.jpeg)
![Anexo A: fotografías del material y del proceso de montaje.](./Documentación/img/destornillador.jpg)
### Anexo B
![Anexo B: capturas del tablero de tareas (historial)](./Documentación/img/)
### Anexo C
![Anexo C: diagramas](./Documentación/img/diagramaer.png)
### Anexo D: tabla comparativa de sistemas operativos
#### Comparativa: Linux Mint vs Windows 11

| Característica | Linux Mint | Windows 11 |
|---|---|---|
| **Tipo de licencia** | Software libre y gratuito | Propietario, de pago (licencia) |
| **Coste** | 0 € | Licencia de pago (incluida en equipos nuevos) |
| **Base** | Ubuntu / Debian (Linux) | Windows NT (Microsoft) |
| **RAM mínima / recomendada** | 2 GB / 4 GB | 4 GB / 8 GB o más |
| **Espacio en disco** | Unos 20 GB | Mínimo 64 GB |
| **Requisitos especiales** | Ninguno relevante; arranca en equipos antiguos | UEFI, Secure Boot, TPM 2.0 y CPU compatible |
| **Equipos antiguos** | Muy adecuado (ediciones Xfce y MATE ligeras) | Poco adecuado: muchos equipos viejos no cumplen |
| **Entornos de escritorio** | Cinnamon, MATE y Xfce | Interfaz única de Windows |
| **Software ofimático** | LibreOffice incluido | Microsoft Office (de pago, aparte) |
| **Compatibilidad de programas** | Alternativas libres; Wine para algunos de Windows | La más amplia (Office, Adobe, juegos, etc.) |
| **Seguridad** | Pocos virus; permisos de usuario estrictos | Windows Defender; mayor objetivo de malware |
| **Privacidad** | Sin telemetría ni publicidad | Telemetría y servicios en la nube integrados |
| **Actualizaciones** | Controladas por el usuario (Gestor de actualizaciones) | Automáticas y poco controlables |
| **Mantenimiento** | Soporte de la versión actual hasta 2029 | Soporte continuo de Microsoft |
| **Uso en entornos ASIR** | Excelente para servidores, redes y aprendizaje | Necesario para administrar entornos Microsoft |

> (Datos orientativos de las versiones actuales. Comprobad los requisitos oficiales de cada versión antes de instalar y citad las fuentes en la bibliografía.)
### Anexo E: fichas técnicas de los componentes
#### Compatibilidad de componentes con las placas base

##### Placas base

- **PB00**: [Gigabyte A520M K V2](https://www.dominiovirtual.es/placas-base/29368/a520m-k-v2/gigabyte-a520m-k-v2-placa-base-amd-a520-zocalo-am4-micro-atx-4719331852771.html)
- **PB01**: [ASUS M2N68-AM PLUS](https://theretroweb.com/motherboards/s/asus-m2n68-am-plus-rev-2-01g)

Leyenda: ✅ Compatible · ❌ No compatible

---

#### Procesadores (CPU)

- **CPU00** · [AMD Athlon 3000G](https://www.techpowerup.com/cpu-specs/athlon-3000g-fh.c2243)
  - PB00: ✅ Compatible
  - PB01: ❌ No compatible
- **CPU01** · [AMD Athlon II X2 250](https://www.techpowerup.com/cpu-specs/athlon-ii-x2-250.c602)
  - PB00: ❌ No compatible
  - PB01: ✅ Compatible

#### Memoria RAM

- **RAM00** · [ADATA XPG GAMMIX D35 DDR4](https://assets.adata.com/storage/downloadfile/datasheet_xpg_gammix_d35_ddr4_memory_20260831.pdf)
  - PB00: ✅ Compatible
  - PB01: ❌ No compatible
- **RAM01** · [Hynix HMT325U6BFR8C-H9 DDR3](https://www.alldatasheet.es/datasheet-pdf/pdf/332884/HYNIX/HMT325U6BFR8C-H9.html)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM02** · [Hynix HYMP125S64CP8-Y5 DDR2 SO-DIMM](https://www.alldatasheet.com/datasheet-pdf/pdf/332753/HYNIX/HYMP125S64CP8-Y5.html)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM03** · [Samsung M378B5773CH0-CK0 DDR3](https://www.compuram.biz/memory_module/samsung/m378b5773ch0-ck0.htm)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM04** · [Ramaxel RMR5030MN58E8F-1600 DDR3](https://www.rueducommerce.fr/p/m24072750089.html)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM05** · [Micron MT8JTF25664AZ-1G6D1 DDR3](https://www.compuram.biz/memory_module/micron/mt8jtf25664az-1g6d1.htm)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM06** · [Micron MT8JTF25664AZ-1G4D1 DDR3](https://octopart.com/es/part/micron/MT8JTF25664AZ-1G4D1)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM07** · [Micron MT9JSF25672AZ-1G4D1ZE DDR3 ECC](https://ram-co-shop.de/2-GB-DDR3-ECC-RAM-PC3-10600E-Micron-MT9JSF25672AZ-1G4D1ZE_1)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM08** · [Crucial CT25664BA160B.C8F DDR3](https://www.compuram.biz/memory_module/crucial/ct25664ba160b-c8f.htm)
  - PB00: ❌ No compatible
  - PB01: ❌ No compatible
- **RAM09** · [Kingston KVR800D2N5/1G DDR2](https://www.alldatasheet.es/datasheet-pdf/pdf/2172819/KINGSTON/KVR800D2N5-1G.html)
  - PB00: ❌ No compatible
  - PB01: ✅ Compatible

#### Tarjetas gráficas (GPU)

- **GPU00** · [ATI Radeon X1550](https://www.techpowerup.com/gpu-specs/radeon-x1550.c1805)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **GPU01** · [ATI Mobility Radeon HD 3450](https://www.chaynikam.info/es/Mobility_Radeon_HD_3450.html)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **GPU02** · [NVIDIA GeForce 8600 GTS](https://www.geektopia.es/es/product/nvidia/geforce-8600-gts/)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **GPU03** · [NVIDIA GeForce 210](https://www.techpowerup.com/gpu-specs/geforce-210.c2020)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **GPU04** · [ATI Radeon HD 3650](https://www.techpowerup.com/gpu-specs/radeon-hd-3650.c226)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible

#### Discos de almacenamiento (DD)

- **DD00** · [Crucial BX500 2.5" SSD SATA](https://gzhls.at/blob/ldb/3/f/5/8/df89cd2a2bdba8b18b009df9232c196e8c47.pdf)
  - PB00: ✅ Compatible
  - PB01: ❌ No compatible
- **DD01** · [Western Digital WD Blue WD5000AAKX 500GB](https://www.hdsentinel.com/storageinfo_details.php?lang=en&model=WDC%20WD5000AAKX)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **DD02** · [Samsung SpinPoint F3 HD502HJ 500GB](https://recuperodatos.com/disco/samsung-hd502hj-hdd-3-5-sata-500gb-595-955)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **DD03** · [Seagate Barracuda ST500DM002 500GB](https://recuperodatos.com/disco/seagate-st500dm002-1bd142-hdd-3-5-sata-500gb-595-3561)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **DD04** · [Western Digital WD Blue WD10EZEX 1TB](https://www.geektopia.es/es/product/western-digital/wd10ezex/)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **DD05** · [Maxtor DiamondMax 21 STM3320820AS 320GB](https://www.hdsentinel.com/storageinfo_details.php?lang=en&model=MAXTOR%20STM3320820AS)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **DD06** · [SanDisk Ultra SSD 240GB](https://www.storagereview.com/review/sandisk-ultra-ssd-review-240gb)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **DD07** · [Kingston A400 SA400S37 SSD SATA](https://www.kingston.com/datasheets/SA400S37_latam.pdf)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible

#### Fuentes de alimentación (FA)

- **FA00** · [Tacens Anima APSIII500 500W](https://tacens.es/en/componentes/apsiii500)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **FA01** · [Thermaltake Litepower 700W](https://www.hardmaniacos.com/review-fuente-de-alimentacion-thermaltake-litepower-700w/)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **FA02** · [Maxima OKE ST-452 450W](https://es.wallapop.com/item/fuente-alimentacion-maxima-oke-model-st452-de-450w-1161711566)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible

#### Lectores de DVD (LD)

- **LD00** · [Panasonic UJ8B1 Lector DVD SATA](https://psacomputoypapeleria.com/producto/Componentes/lector_interno_dvd_uj8b1_memoria_cache_2mb_velocidad_de_escritura_8x_cav_24x_cav_interfaz_sata_color_gris)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **LD01** · [Samsung SN-208FB Lector DVD SATA](https://icecat.biz/p/samsung/sn-208-fb-bebe/optical+disc+drives-sn-208fb-38079125.html)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible

#### Tarjetas de red (TR)

- **TR00** · [TP-Link TL-WN881ND PCIe](https://ibertronica.es/tp-link-tl-wn881nd-300mb-pci-e)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **TR01** · [Conceptronic Wireless C300RI PCI](https://www.quickhard.com/Conceptronic-Wireless-Tarjeta-PCI-(C300RI).asp)
  - PB00: ❌ No compatible
  - PB01: ✅ Compatible

#### Ventilación (V)

- **V00** · [Disipador AMD AM4 712-000046](https://dakis.es/2105-disipador-amd-am4-712-000046-original.html)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **V01** · [Ningjie NJ12025SE Ventilador 120mm](https://www.elecok.com/es/ningjie-nj12025se-server-square-fan-sq120x25-w165x2x2-12v-0-12a.html)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **V02** · [Tacens Anima AF12 Ventilador 120mm](https://tacens.es/en/ventiladores/af12)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible

#### Cajas (CH)

- **CH00** · [Tacens Anima AC4500](https://tacens.es/componentes/ac4500)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible
- **CH01** · [Codegen SuperPower Q6232-A2](https://mobilespecs.net/cases/Codegen/Codegen_SuperPower_Q6232-A2_480W.html)
  - PB00: ✅ Compatible
  - PB01: ✅ Compatible