https://es-store.msi.com/products/modern-a14-ai-f2hmg-009xes-portatiles

https://www.energystar.gov/productfinder/product/certified-computers/details/4478547
![alt text](image.png)

Iván Gimeno Montoya
# Actividades
## Actividad 1. Analizar necesidades y componentes
### 1. Identificad CPU, RAM, SSD, GPU, placa base e interfaces de entrada/salida. Explicad su función y qué características importan para este encargo.

- **CPU**
    * **Modelo**: AMD Ryzen™ 7 250 (8 cores, Max Boost Clock 3.3 GHz)
    * **Función**: Es el cerebro del ordenador; se encarga de procesar las instrucciones del sistema operativo, aplicaciones y tareas en segundo plano.
    * **Características importantes**: Sus 8 núcleos aportan una excelente capacidad multitarea, permitiendo ejecutar aplicaciones de ofimática avanzada, navegación pesada y software profesional de forma fluida.

- **RAM**
    * **Modelo**: 32 GB (16 GB * 2) DDR5
    * **Función**: Memoria de acceso aleatorio donde se cargan de forma temporal los datos de los programas y archivos que estás usando activamente para un acceso ultra rápido.
    * **Características importantes**: La capacidad de 32 GB en doble canal (*dual-channel*) es ideal para mantener decenas de pestañas abiertas, máquinas virtuales o programas pesados sin ralentizaciones.

- **SSD**
    * **Modelo**: 1 TB NVMe SSD PCIe Gen4
    * **Función**: Almacenamiento permanente de alta velocidad para el sistema operativo, programas y archivos personales.
    * **Características importantes**: Al ser NVMe PCIe Gen4, ofrece tasas de lectura y escritura sumamente rápidas (arranque del sistema en pocos segundos y transferencia de archivos instantánea). 

- **GPU**
    * **Modelo**: AMD Radeon™ Graphics (Integrada)
    * **Función**: Procesador gráfico encargado de renderizar la interfaz visual, vídeos y gráficos en pantalla.
    * **Características importantes**: Al estar integrada en el procesador, comparte memoria con la RAM. Es perfecta para tareas multimedia de alta definición, reproducción de vídeo 4K y ofimática, ahorrando batería frente a gráficas dedicadas.

- **Placa base**
    * **Modelo**: Propietaria de MSI (Chipset SoC integrado / Serie MS-14SK)
    * **Función**: El circuito impreso principal que conecta físicamente todos los componentes del portátil (CPU, RAM, almacenamiento y puertos) permitiendo su comunicación.
    * **Características importantes**: Su diseño compacto está optimizado para el chasis ultrafino de 14 pulgadas del portátil, integrando conectividad moderna como Wi-Fi 6E y controladoras de alta velocidad.

- **Interfaces de entrada/salida (I/O)**
    * **Modelo**: 
      * 2x USB Type-C (USB3.2 Gen2 / DisplayPort™ / Power Delivery 3.0)
      * 2x USB Type-A USB3.2 Gen1
      * 1x HDMI™ 2.1 (4K @ 60Hz)
      * 1x Mic-in/Headphone-out Combo Jack
      * 1x Lector de tarjetas microSD
    * **Función**: Conectar periféricos externos, pantallas adicionales, dispositivos de audio y transferencia de datos.
    * **Características importantes**: Los puertos USB-C con Power Delivery y DisplayPort aportan una gran versatilidad (permiten cargar el portátil y conectar monitores externos con un solo cable), mientras que el HDMI 2.1 garantiza salida de vídeo fluida a pantallas 4K.

### 2. Explicad las diferencias entre núcleos físicos, hilos lógicos y arquitectura x86-64/ARM. Justificad la elección de arquitectura.

#### Diferencias entre núcleos físicos e hilos lógicos

* **Núcleo físico (Physical Core)**: 

    * Es la unidad de procesamiento de hardware real dentro del silicio de la CPU. Dispone de sus propias unidades aritmético-lógicas (ALU), registros, unidad de punto flotante (FPU) y cachés de nivel 1 y 2 (L1/L2). Ejecuta instrucciones de forma totalmente independiente e simultánea a nivel físico.

* **Hilo lógico** (Logical Thread / SMT / Hyper-Threading): 

    * Es una subdivisión virtual gestionada por el procesador que permite a un único núcleo físico presentar dos procesadores lógicos al sistema operativo. Aprovecha los tiempos muertos en los que el núcleo físico espera datos de la memoria RAM para procesar una segunda secuencia de instrucciones.

**Impacto práctico**: Un procesador de 8 núcleos físicos con SMT (Simultaneous Multithreading) muestra 16 hilos lógicos al sistema operativo, ofreciendo entre un 15% y un 30% más de rendimiento en tareas multihilo paralelas (compilación de código, renderizado, cálculo distribuido) respecto a un procesador sin SMT.

#### Arquitectura x86-64 vs. ARM

* **x86-64** (CISC - Complex Instruction Set Computer):

    * **Diseño**: Utiliza instrucciones de longitud variable y alta complejidad, capaces de ejecutar múltiples operaciones internas en una sola orden.

    * **Ecosistema**: Desarrollado por Intel y AMD. Es el estándar dominante en ordenadores de sobremesa, portátiles tradicionales y servidores.

    * **Filosofía**: Prioriza el rendimiento bruto por ciclo de reloj y la compatibilidad retrospectiva con décadas de software, a costa de una mayor complejidad de silicio y un consumo térmico/eléctrico superior.

* **ARM** (RISC - Reduced Instruction Set Computer):

    * Diseño: Utiliza un conjunto de instrucciones simplificado y de longitud fija. Cada instrucción realiza una tarea sencilla que se ejecuta rápidamente en pocos ciclos de reloj.

    * Ecosistema: Diseñada por ARM Ltd. y licenciada a fabricantes como Apple (Apple Silicon), Qualcomm (Snapdragon) o MediaTek.

    * Filosofía: Prioriza la eficiencia energética por vatio, ofreciendo menor consumo eléctrico, menor emisión de calor y mayor duración de batería en dispositivos móviles y ultrabooks.

### 3. Explicad por qué importan la ampliación de RAM y SSD, la refrigeración, el consumo y el ruido.
### 4. Diferenciad los requisitos imprescindibles de los deseables y justificad vuestra clasificación.


## Actividad 2. Dimensionar cuatro máquinas virtuales

El profesorado puede necesitar estas máquinas **funcionando simultáneamente**:

|VM|Sistema operativo invitado|RAM asignada|
|-|-|-|
|1|Windows 11|8 GB|
|2|Ubuntu Desktop|4 GB|
|3|Ubuntu Server|2 GB|
|4|Windows 11|8 GB|

### 1. Calculad la RAM total asignada a las VM y la que queda para el anfitrión con 32 y 64 GB de RAM. Indicad si la memoria restante es suficiente y justificadlo.

Para calcular la memoria restante debemos de sumar los siguiente datos (aproximados):

* Windows 11 base: 6 GB
* VirtualBox + vmmem (virtualización): 1 GB
* RAM total máquinas host: 20 GB

Por tanto el consumo total son 27 GB. 

Memoria restante para cada configuración:

* Equipo 32 GB: 5 GB restantes.
    * ¿Son suficientes?: Dependerá de qué otros programas mantengamos abiertos. Dos escenarios y valores estimados de memoria:
        * Ningun programa abierto o muy ligero: con 5 GB restantes es más que suficiente.
        * Navegador Chromium (2GB), VS Code (0,5 GB), otros programas pesados como AutoCAD (2 GB) o Cisco Packet Tracer (0,5 GB): podría empezar a quedarse corto.
* Equipo 64 GB: 37 GB restantes
    * ¿Son suficientes?: Sí, de forma sobrada. Tanto para el sistema principal como para las máquinas virtuales y demás software habitual (VMware, Visual Studio, Cisco
Packet Tracer) es más que suficiente.

### 2. Proponed cuántas vCPU asignaríais a cada VM. Explicad qué problemas puede generar asignar demasiadas.

#### A. Propuesta de asignación de vCPU por Máquina Virtual
* **VM 1 (Windows 11 - 8 GB RAM):** **4 vCPUs** (Suficiente para mover el entorno gráfico de Windows de forma fluida).
* **VM 2 (Ubuntu Desktop - 4 GB RAM):** **2 vCPUs** (Adecuado para un escritorio Linux ligero).
* **VM 3 (Ubuntu Server - 2 GB RAM):** **1 o 2 vCPUs** (Ideal para servicios de red y consola sin interfaz gráfica).
* **VM 4 (Windows 11 - 8 GB RAM):** **4 vCPUs** (Igual que la primera para equilibrar cargas).
* **Total asignado:** Entre **11 y 12 vCPUs**. Los hilos restantes (4 a 5 hilos) quedan reservados exclusivamente para el anfitrión y el hipervisor.

#### B. Problemas que genera asignar demasiadas vCPU
1. **Problemas de planificación (*Co-scheduling*):** Si asignas más hilos de los que el procesador físico tiene disponibles (por ejemplo, intentar dar 8 vCPUs a cada Windows 11 sumando más de 16 hilos en total), el hipervisor tendrá que pausar constantemente los procesos esperando a que queden núcleos libres, generando una latencia enorme (*CPU throttling* virtual).
2. **Inestabilidad del Anfitrión (*Starvation*):** Si las VMs acaparan todos los hilos físicos, el sistema anfitrión se quedará sin capacidad de procesamiento para gestionar el disco, la red o la interfaz gráfica, provocando bloqueos y tirones (*stuttering*).
3. **Sobrecarga del Hipervisor:** Gestionar un exceso de cambios de contexto entre hilos virtuales consume ciclos de CPU útiles, restando rendimiento general al equipo.

### 3. Repartid 1 TB de almacenamiento entre el anfitrión, aplicaciones, archivos, discos virtuales y espacio libre. Indicad las capacidades en una tabla.

|ANFITRIÓN|APLICACIONES|ARCHIVOS|DISCOS VIRTUALES|ESPACIO LIBRE
|-|-|-|-|-|
|50 GB + 30 GB + 30 GB + 50 GB|X GB|X GB|X GB|-|

### 4. Valorad el comportamiento esperado durante el uso simultáneo de las cuatro VM.