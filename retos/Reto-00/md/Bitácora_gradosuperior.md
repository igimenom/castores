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

