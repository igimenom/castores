# Memoria de Trabajo: Puesta a Punto e Inventario de Equipos

---

## 1. Fase 1: Organización del Equipo y Gestión del Proyecto

En la etapa inicial nos enfocamos en estructurar la metodología de trabajo. **Iván** asignó los roles y redactó el documento organizador para la distribución de tareas. Paralelamente, **Bruno** diseñó el logo del equipo.

Para la gestión y el seguimiento continuo, **Iván** configuró el repositorio en GitHub y, junto a **Bruno** y **Javier**, pusimos en marcha un tablero Kanban. En el apartado de inventario, **Marcos**, **Bruno** e **Iván** catalogaron en Excel el material de la sala R4, incluyendo componentes guardados en estanterías (fuentes de alimentación, ventiladores, tarjetas gráficas y memorias RAM). Además, **Bruno** estructuró un tercer nivel de inventario con definiciones técnicas, elaboró el glosario terminológico y mantuvo al día el cuaderno de bitácora.

---

## 2. Fase 2: Desmontaje, Inspección Física y Hardware

El trabajo práctico comenzó con el desmontaje e identificación de los componentes. Durante esta fase, **Bruno** realizó la limpieza y el mantenimiento preventivo de las piezas.

### Incidencia en el Desmontaje: Procesador pegado al Disipador
**Problema:** Al intentar retirar el disipador de la CPU, el procesador se quedó completamente pegado a la base debido al estado de la pasta térmica.

**Solución:** Se utilizó un secador para aplicar calor de forma directa en el bloque y ablandar la pasta. Una vez caliente la zona, se hizo palanca con cuidado utilizando un destornillador plano hasta lograr desenganchar la CPU sin causar ningún daño a los pines.

Durante el proceso, **Javier** tomó fotos de cada componente, que **Marcos** e **Iván** etiquetaron y describieron en detalle. Con el hardware al descubierto, **Bruno** recopiló los *datasheets* y especificaciones oficiales, permitiendo a **Iván** y **Bruno** diseñar la matriz de compatibilidad. Una vez documentado el proceso, **Marcos** reensambló el equipo. Posteriormente, **Javier** y **Marcos** repitieron el procedimiento de identificación de componentes en dos ordenadores adicionales de la sala R4.

---

## 3. Fase 3: Puesta a Punto, Pruebas y Desarrollo Web

### Configuración del Sistema y Solución de Problemas
Inicialmente, **Iván** preparó un USB ejecutable con Ventoy y Linux Mint. **Javier** actualizó la BIOS a la última versión disponible y activó el perfil XMP en la placa base para exprimir el rendimiento de la memoria RAM.

![BIOS](./Documentación/img/Imagen%20de%20la%20bios%20del%20ordenador.jpg)
![Especificaciones Linux](./Documentación/img/Especificaciones%20desde%20Linux.jpg)

Debido a problemas persistentes de arranque con Linux Mint, decidimos cambiar el sistema a Windows 11. Para preparar el disco duro, booteamos **Hiren's Boot** desde un USB y limpiamos las particiones utilizando la herramienta de consola diskpart. Posteriormente, flasheamos la ISO de Windows 11 e instalamos el sistema correctamente.

Para validar la estabilidad del equipo, **Marcos** y **Javier** ejecutaron pruebas de rendimiento y diagnóstico:
* **OCCT & HWInfo:** Monitorización térmica y comprobación de voltajes en la CPU.
* **CPU-Z / GPU-Z:** Pruebas de rendimiento (*benchmark*) de procesador y tarjeta gráfica.
* **Memtest64:** Test de diagnóstico de estabilidad para la memoria RAM.
* **Unigine Heaven:** Test de estrés para evaluar el rendimiento gráfico.
* **CrystalDiskInfo:** Análisis del estado de salud y errores del disco duro.

### Desarrollo y Maquetación Web
**Bruno** e **Iván** diseñaron los bocetos iniciales (*mockups*). **Javier** migró las tablas de Excel e inventario a HTML y creó las secciones del equipo, mientras que **Bruno**, **Javier** e **Iván** maquetaron la interfaz usando CSS. El equipo optimizó el código limpiando etiquetas innecesarias, **Marcos** adaptó la matriz de compatibilidad a formato web e **Iván** y **Javier** estructuraron la navegación y el pie de página. 

Para cerrar esta fase, **Marcos** y **Bruno** desarrollaron el Diagrama Entidad-Relación (E/R), **Javier** redactó el informe de incidencias y **Bruno** preparó la presentación final.

---

## 4. Resumen Técnico de Intervenciones

* **Material e Instrumental:** Destornilladores (plano y estrella), secador de aire caliente y memorias USB de instalación.
* **Sistemas y Herramientas Utilizadas:** Ventoy, Linux Mint, Windows 11, Hiren's Boot (`diskpart`), OCCT, CPU-Z, GPU-Z, Memtest64, HWInfo, Unigine Heaven y CrystalDiskInfo.
* **Principales Decisiones:** Migración a Windows 11 LTSC tras fallos de arranque en Linux, formateo profundo con `diskpart` y activación del perfil XMP en la BIOS.

---

## 5. Tareas Pendientes

### Desarrollo Web
* Finalizar el *mockup* definitivo.
* Corregir sintaxis pendientes en el código HTML.
* Integrar la matriz de compatibilidad en la web especificando entre paréntesis el nombre de cada componente.

### Documentación
* Completar el Diagrama Entidad-Relación relativo al software.
* Trasladar el cronograma de la bitácora a la memoria general del proyecto.
* Redactar el documento final `proceso.md`.