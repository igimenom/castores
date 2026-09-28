    1. Introducción 
        1.1. Descripción del proyecto
        1.2. Objetivos del proyecto
    2. Análisis del contexto y justificación de la propuesta 
    3. Estado del arte 
    4. Requisitos del proyecto
        4.1. Requisitos funcionales 
        4.2. Requisitos no funcionales 
    5. Planificación
        5.1. Fases del proyecto
        5.2. Cronograma de trabajo 
        5.3. Recursos necesarios 
    6. Desarrollo del proyecto
        6.1. Análisis y diseño 
        6.2. Tecnologías/Herramientas empleadas
        6.3. Partes contratantes
        6.4. Presupuesto. 
        6.5. OPCIONAL: Contrato y pliego de condiciones
        6.6. OPCIONAL: Análisis de riesgos
    7. Pruebas y validación
    8. Documentación técnica
    9. Conclusiones
        9.1. Desviación sobre la planificación inicial
        9.2. Resultados obtenidos y posibles mejoras futuras
        9.3. Valoración personal
        9.4. OPCIONAL: Agradecimientos
    10. Bibliografía
    11. Anexos
# Puesta a punto del equipo
Para comenzar el proyecto, formamos el equipo de trabajo y repartimos los diferentes roles para tener claras las responsabilidades desde el primer momento, además de elaborar un documento organizativo para la distribución general de las tareas.

En la parte de hardware, desmontamos el ordenador para identificar cada uno de sus componentes. Durante este proceso tuvimos un problema al quitar el disipador, ya que la CPU se quedó pegada a él debido a la pasta térmica. Para solucionarlo, fuimos a por un secador para darle calor y, tras calentar la zona, hicimos palanca cuidadosamente con un destornillador plano hasta lograr despegar la CPU sin dañarla. Después, realizamos fotos a los diferentes componentes, anotamos en el inventario cada pieza y volvimos a montar el equipo. También realizamos pruebas de rendimiento instalando la herramienta OCCT para monitorizar y revisar las temperaturas del procesador en funcionamiento.

Respecto al software y sistemas, preparamos un USB ejecutable utilizando Ventoy y Linux Mint, realizamos la instalación completa del sistema operativo y actualizamos la BIOS de la placa base a la versión más reciente, aparte activamos el perfil XMP para tener el máximo rendimiento de la memoria RAM.
![BIOS](./Documentación/img/Imagen%20de%20la%20bios%20del%20ordenador.jpg)
![GG](./Documentación/img/Especificaciones%20desde%20Linux.jpg)

Con Linux Mint tuvimos problemas con el arranque y terminamos instalando y configurando Windows 11 ltsc.
Para ello tuvimos que meter en el USB Hiren's Boot para poder formatear el disco duro, dentro de Hiren's Boot usamos la herramienta Diskpart para formatear el disco duro. Y ahora volvimos a formatear el USB con la ISO de Windows 11 LTSC e instalamos el sistema en el ordenador.

En el apartado de documentación y datos, creamos una tabla para comprobar la compatibilidad de los componentes, recopilamos sus fichas técnicas e información técnica desde las webs oficiales, y diseñamos el logo del equipo. Toda esta información recopilada en hojas de cálculo se trasladó a código HTML para su visualización web.

Para la gestión global y la organización, estructuramos el repositorio en GitHub, pusimos en marcha un tablero Kanban para seguir la evolución del trabajo, realizamos el inventariado del material disponible en la sala R4 y diseñamos el diagrama entidad-relación del proyecto.

Al terminar con el ordenador, cogimos otros dos ordenadores de la sala R4 y les identificamos todos los componentes. Además, apuntamos en el inventario las piezas que había en las estanterías, como las fuentes de alimentación, los ventiladores, las tarjetas gráficas y las memorias RAM.

## Resumen
### Material utilizado
* Destornillador: Usado para montar y desmontar el ordenador.
* Secador: Utilizado para calentar el Procesador para separarlo del CPU FAN.
* USB: Para instalar el sistema.
### Problemas encontrados
* El cpu estaba pegado al ventilador
* Problemas de arranque con Linux Mint
### Pruebas realizadas
* CPU-Z para un benchmark de la CPU.
* GPU-Z para un benchmark de la GPU.
* Memtest64, para la memoria RAM.
* Hwinfo; para voltajes y temperaturas.
* Ungine Heaven Benchmark para rendimiento de GPU.
* CrystalDiskInfo para la salud y errores del disco.
### Decisiones tomadas
* Instalar Windows
* USB formateado con ventoy
### Intervenciones realizadas
* Montar y desmontar el pc
* Instalación windows
* Pruebas de rendimiento y temperaturas