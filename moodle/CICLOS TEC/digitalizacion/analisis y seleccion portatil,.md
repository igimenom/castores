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

#### Justificación de la elección de x86-64 para tus requisitos

Para el perfil de portátil buscado (1.000–1.300 €, 32 GB ampliables a 64 GB, dual boot Windows 11 + Ubuntu y 2 monitores externos), la arquitectura x86-64 es la única opción que cumple íntegramente las especificaciones por las siguientes razones:

1. Ampliación de memoria RAM por módulos (SODIMM):

    * En ARM para portátiles (Snapdragon X Elite, Apple Silicon), la RAM está soldada en placa o integrada directamente dentro del encapsulado del SoC para obtener el máximo ancho de banda. Es imposible comprar un equipo con 32 GB y ampliarlo a 64 GB en el futuro.

    * En x86-64 (Intel Core / AMD Ryzen), los portátiles de gama profesional (como Lenovo ThinkPad E14 o HP ProBook) siguen ofreciendo 2 ranuras SODIMM físicas sustituibles.

2. Compatibilidad nativa y madurez en Linux (Ubuntu):

    * La arquitectura x86-64 lleva más de dos décadas con soporte de primer nivel en el kernel de Linux. Los controladores gráficos de la GPU integrada, la gestión de suspensión (suspend-to-RAM), el control térmico y el Wi-Fi funcionan de forma estable desde la instalación.

    * Los portátiles ARM en el mercado de consumo aún enfrentan serias limitaciones de controladores en distribuciones Linux convencionales (problemas con salidas de vídeo DisplayPort, aceleración gráfica por GPU o administración de energía).

3. Ejecución nativa de binarios sin emulación:

    * En x86-64, todo el entorno de desarrollo, contenedores Docker/Podman, máquinas virtuales (KVM, VirtualBox) y software técnico se ejecuta nativamente a máxima velocidad.

    * En ARM, aunque existen capas de traducción de instrucciones (como Prism en Windows 11), las herramientas de virtualización de bajo nivel y aplicaciones no adaptadas sufren caídas de rendimiento o incompatibilidades directas.

4. Gestión multimonitor nativa:

    * Las GPU integradas de AMD e Intel actuales en x86-64 (Radeon 780M / Intel Arc) soportan de forma nativa hasta 3 o 4 pantallas independientes mediante el control de bus DisplayPort/HDMI directo, asegurando que ambos monitores externos funcionen sin depender de controladores USB de terceros (como DisplayLink).

### 3. Explicad por qué importan la ampliación de RAM y SSD, la refrigeración, el consumo y el ruido.

#### 1. Ampliación de RAM y SSD: Longevidad y relación coste-rendimiento
* Ampliación de RAM y SSD
    * La posibilidad de ampliar la memoria RAM mediante módulos físicos SODIMM garantiza la longevidad del equipo frente a las exigencias crecientes del software, máquinas virtuales y contenedores, evitando tener que reemplazar el portátil cuando los 32 GB queden cortos. Ampliar a 64 GB de forma manual en el futuro resulta significativamente más económico que pagar el sobreprecio de la memoria soldada de fábrica. Por su parte, un SSD NVMe M.2 sustituible es imprescindible para mantener un arranque dual limpio entre Windows 11 y Ubuntu con espacio suficiente para ambos, garantizando además una reparación rápida ante fallos o desgaste de las celdas de memoria sin inutilizar la placa base.

* Refrigeración

    * Un sistema de disipación bien dimensionado evita el estrangulamiento térmico (thermal throttling), situación en la que el procesador reduce automáticamente sus frecuencias de reloj al alcanzar temperaturas límite cercanas a los $95^\circ\text{C}$. Un equipo con refrigeración deficiente pierde entre un 20% y un 40% de su potencia real a los pocos minutos de ejecutar tareas intensivas como compilaciones o renderizados, mientras que una disipación eficiente sostiene el rendimiento máximo de forma continuada. Mantener temperaturas bajas también frena la degradación de la batería de litio y de los componentes de la placa base, además de evitar la transferencia de calor al teclado.

* Consumo eléctrico

    * La eficiencia energética del procesador determina la autonomía real y la portabilidad del equipo. Un consumo reducido en reposo o en tareas ligeras extiende la duración de la batería durante la jornada laboral y disminuye el desgaste por ciclos diarios de carga. Adicionalmente, procesadores con consumos ajustados de 15 W a 28 W permiten operar a pleno rendimiento utilizando cargadores compactos y ligeros con tecnología USB-C Power Delivery de 65 W, evitando la necesidad de transportar cargadores pesados o propietarios.

* Ruido de ventilación

    * El perfil sonoro del sistema de refrigeración influye en la concentración y la fatiga cognitiva durante jornadas de trabajo prolongadas. Los ventiladores pequeños a altas revoluciones generan silbidos agudos altamente molestos, mientras que un sistema térmico amplio con palas de mayor tamaño mueve un volumen de aire equivalente produciendo un soplido grave y discreto. Una curva de ventilación optimizada en el firmware permite que el equipo funcione en modo completamente silencioso durante la navegación o edición de texto, activando los ventiladores progresivamente solo bajo cargas altas.
### 4. Diferenciad los requisitos imprescindibles de los deseables y justificad vuestra clasificación.

| Aspecto | Requisito |Imprescindible / deseable|
| --- | --- | --- |
| **Procesador** | Intel o AMD, arquitectura x86-64 | Imprescindible, si no se cumple este requisito no podemos utilizar el software deseado. |
| **RAM** | 32 GB como mínimo; se valora ampliación a 64 GB | Imprescindible 32 GB para soportar las máquinas virtuales. Los 64 GB son deseables para los próximos años, pero ahora no interesan por el aumento de precio.  |
| **Disco** | SSD NVMe de 1 TB como mínimo; preferiblemente sustituible | Imprescindible 1 TB para soportar las máquinas virtuales y otros prograams. Más de 1 TB sería deseable para los próximos años, pero ahora no interesan por el aumento de precio. |
| **Pantalla** | 14 pulgadas; preferentemente 1920 × 1200 o superior | Tanto las 14 pulgadas como la resolución son requisitos deseables por motivos de portabilidad y comodidad, pero no son imprescindibles para trabajar. |
| **Gráfica** | Integrada suficiente | Es imprescindible que el ordenador pueda manejar gráficos, pero no es necesario que tenga una gráfica dedicada. |
| **Pantallas simultáneas** | Pantalla integrada y dos monitores externos independientes | Deseable porque no es imprescindible para realizaer nuestro trabajo, pero sí es más comodo para trabajar. |
| **Puertos** | USB-A, HDMI y USB-C con salida de vídeo | No es impresicindible para el trabajo, pero sí es un requisito muy deseable y fácil de cumplir. |
| **Red** | Wi-Fi moderno y Ethernet integrado o por adaptador/dock | La Wi-Fi es imprescindible para trabajar actualmente, el Ethernet es muy desable y relativamente fácil de cumplir en modelos deseables. |
| **Movilidad** | Preferentemente 1,2–1,5 kg | Deseable la portabilidad y la movilidad, pero no es imprescindible para trabajar. |
| **Sistemas operativos** | Compatible con Windows 11 y Ubuntu | Imprescindible para el uso que se le va a dar. |
| **Teclado** | Español | Imprescindible para trabajar en entornos hispanohablantes. |
| **Otros** | Buena refrigeración, poco ruido, construcción duradera y garantía | Deseables y elementos que permiten dirimir el portátil más adecuado. |

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