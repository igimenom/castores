







# RA2: Lenguajes de Marcas en la Web

#### El objetivo del RA2 es verificar que sabes utilizar lenguajes de marcas para la transmisión de información a través de la Web, analizando la estructura de los documentos e identificando sus elementos. Utiliza este cuestionario como guía antes de entregar tu paquete comprimido y realizar tu exposición oral.
---
| Criterio | Pregunta de Autoevaluación e Ítem de Comprobación | Evidencia / Soporte | Cumple (Sí/No) | Ponderación |
| :--- | :--- | :--- | :---: | :---: |
| **CE2A** | **Clasificación y Versiones:** ¿Has identificado y clasificado en la memoria técnica los lenguajes de marcas relacionados con la Web y la evolución de sus distintas versiones (ej. HTML4, XHTML, HTML5)? | Memoria / Oral | ☐ Sí <br> ☐ No | 5% |
| **CE2B** | **Estructura HTML y Árbol DOM:** ¿Has analizado la estructura del documento identificando sus secciones (`head`, `body`, `header`, `nav`, `main`, `footer`) y cumpliendo al menos 3 niveles de profundidad en el árbol DOM? | Código HTML | ☐ Sí <br> ☐ No | 15% |
| **CE2C** | **Etiquetas y Atributos:** ¿Reconoces y utilizas correctamente las etiquetas y atributos HTML esenciales para mostrar la información del almacén (tablas para el catálogo, formularios para el alta de productos, imágenes y enlaces)? | Código HTML | ☐ Sí <br> ☐ No | 20% |
| **CE2D** | **Comparativa HTML vs. XHTML:** ¿Diferencias claramente en la memoria o exposición las semejanzas y reglas sintácticas que diferencian los lenguajes HTML y XHTML? | Memoria / Oral | ☐ Sí <br> ☐ No | 10% |
| **CE2E** | **XHTML en Gestión de Datos:** ¿Justificas la utilidad de la sintaxis estricta de XHTML cuando se integran páginas web con sistemas de gestión de información, inventarios y bases de datos? | Memoria / Oral | ☐ Sí <br> ☐ No | 10% |
| **CE2F** | **Uso de Herramientas:** ¿Has utilizado Visual Studio Code para la creación y edición del proyecto, organizando correctamente la estructura de archivos en la carpeta comprimida `.zip`? | Entorno / Proyecto | ☐ Sí <br> ☐ No | 10% |
| **CE2G** | **Ventajas de CSS:** ¿Identificas y argumentas en la memoria las ventajas técnicas que aporta separar la estructura de los contenidos de su presentación visual mediante hojas de estilo? | Memoria / Oral | ☐ Sí <br> ☐ No | 10% |
| **CE2H** | **Aplicación de Hojas de Estilo:** ¿Has aplicado hojas de estilo CSS externas para maquetar el inventario, mejorando el diseño de la tabla de componentes, formularios y botones? | Código CSS | ☐ Sí <br> ☐ No | 20% |
---
## Cuestionario de Preguntas Teórico-Prácticas (para la Memoria / Exposición)
Estas son las preguntas específicas que el alumnado debe responder en el documento o durante la defensa de 5 minutos:
* **Sobre la evolución web** (CE2A): ¿Qué necesidades técnicas impulsaron la transición desde las primeras versiones de HTML hacia XHTML y el posterior desarrollo de HTML5?
* **Sobre el análisis del código** (CE2B, CE2C): Muestra un fragmento de tu código HTML del inventario e identifica la jerarquía de al menos tres niveles de nodos en el árbol DOM, explicando el propósito de cada etiqueta y atributo utilizado.
* **Sobre la rigurosidad sintáctica** (CE2D, CE2E): ¿Por qué un documento XHTML mal formado puede fallar al conectarse con una base de datos o sistema de inventario, mientras que HTML5 suele ser más permisivo con los errores del desarrollador?
* **Sobre el diseño y presentación** (CE2G, CE2H): ¿Qué problemas surgirían al mantener la web del almacén si aplicaras los estilos visuales directamente con atributos HTML incrustados en lugar de utilizar un archivo CSS externo?



* --------------------------------------------------------------------------------------------------------------------------------------------
* 
  * CE2A
  * 
  * * * HTML 1.0 (1991): Solo texto hipertexto básico (18 etiquetas). Sin imágenes ni formularios.

HTML 2.0 (1995): Añade formularios (<form>) para enviar datos e imágenes integradas (<img>).

HTML 3.2 (1997): Introduce tablas (<table>), elementos de diseño visual y scripts (<script>).

HTML 4.01 (1999): Separa diseño y contenido mediante CSS, añade marcos (<iframe>) y mejora la accesibilidad.

XHTML 1.0/1.1 (2000): Aplica la sintaxis estricta de XML (cierre obligatorio de etiquetas, minúsculas y comillas en atributos).

HTML5 (2014): Incorpora etiquetas semánticas (<nav>, <article>), multimedia nativa (<video>, <audio>), <canvas> y APIs web.

HTML Living Standard (2019-Presente): Pasa a un modelo de actualización continua sin versiones fijas; añade componentes nativos (<dialog>, popover) y carga diferida (loading="lazy").

CE2D

| Aspecto / Característica | HTML (Estándar Flexible) | XHTML (Estándar XML Estricto) |
| --- | --- | --- |
| **SEMEJANZAS** |  |  |
| **Propósito principal** | Estructurar y presentar contenido en la Web. | Estructurar y presentar contenido en la Web. |
| **Elementos base** | Usa etiquetas como `<a>`, `<p>`, `<div>`, `<table>`, `<img>`. | Usa las mismas etiquetas base heredadas de HTML. |
| **Integración tecnológica** | Se combina con CSS para estilos y JavaScript para interactividad. | Se combina con CSS para estilos y JavaScript para interactividad. |
| **Compatibilidad** | Interpretado de forma nativa por todos los navegadores web. | Interpretado por navegadores web (soporte parcial en versiones antiguas). |
| **DIFERENCIAS** |  |  |
| **Estándar base** | Basado originalmente en SGML / Estándar propio (WHATWG/W3C). | Basado estrictamente en **XML**. |
| **Tolerancia a errores** | **Permisivo:** El navegador intenta corregir el código mal escrito para mostrarlo. | **Estricto:** Un error de sintaxis detiene el procesamiento o falla el renderizado. |
| **Cierre de etiquetas** | Opcional en etiquetas vacías (ej. `<br>`, `<img>`, `<input>`). | **Obligatorio** en todas las etiquetas (ej. `<br />`, `<img />`, `<input />`). |
| **Mayúsculas / Minúsculas** | Indiferente (acepta `<DIV>`, `<div>` o `<DiV>`). | **Obligatorio escribir todo en minúsculas** (solo `<div>`). |
| **Comillas en atributos** | Opcionales en valores simples (ej. `width=100`). | **Obligatorias siempre** (ej. `width="100"`). |
| **Minimización de atributos** | Permitida (ej. `<input checked>` o `<option selected>`). | **Prohibida** (ej. `<input checked="checked" />`). |
| **Anidamiento de etiquetas** | El navegador suele corregir desórdenes leves. | **Estricto:** Deben cerrarse exactamente en el orden inverso al que se abrieron. |
| **Declaración `<html>**` | Etiqueta simple: `<html>`. | Requiere incluir el namespace XML: `<html xmlns="[http://www.w3.org/1999/xhtml](http://www.w3.org/1999/xhtml)">`.





CE2E

Sí, está totalmente justificada. En la integración con bases de datos e inventarios, la sintaxis estricta de XHTML transforma la página web en una fuente de datos predecible y procesable por máquinas sin errores.

Extracción exacta: Permite usar XPath/XSLT para leer SKUs, precios o stock en milisegundos sin lidiar con HTML mal cerrado.

Validación previa (XSD): Comprueba la estructura antes de un INSERT o UPDATE, evitando la entrada de datos corruptos a la base de datos.

Estructura fija: Al no permitir anidamientos incorrectos, impide que los datos se desordenen y se guarden en campos equivocados.

Compatibilidad nativa: Se conecta de forma directa con sistemas empresariales (ERP, ESB) diseñados para procesar XML
 |

CE2G

Mantenibilidad centralizada: Modificaciones estéticas globales desde un solo archivo CSS sin editar el código HTML.

Rendimiento y menor peso: El navegador guarda el CSS en caché y descarga archivos HTML más livianos, acelerando la velocidad de carga.

Diseño adaptativo (Responsive): Un único HTML se adapta automáticamente a móviles, computadoras o impresión mediante Media Queries.

Accesibilidad: Los lectores de pantalla para personas con discapacidad procesan un código limpio y con orden lógico.

Mejor SEO: Los motores de búsqueda indexan el contenido con mayor rapidez al no tener que filtrar código de diseño.

Trabajo en paralelo: Permite a los desarrolladores estructurar los datos (HTML) mientras el equipo de UI trabaja en la interfaz (CSS).

PREGUNTAS TEÓRICO PRÁCTICAS

Mantenibilidad centralizada:

Desarrollo: Al definir la apariencia visual en una hoja de estilo externa, cualquier cambio estético (colores, fuentes, márgenes) se realiza en un único archivo. Esto aplica el principio DRY (Don't Repeat Yourself), evitando tener que modificar cientos de etiquetas HTML de forma individual y previniendo inconsistencias en la interfaz.

Rendimiento y menor peso:

Desarrollo: El marcado HTML queda limpio de atributos repetitivos, reduciendo significativamente el tamaño de descarga del documento (payload). Además, el navegador descarga el archivo .css solo en la primera petición y lo almacena en caché para las siguientes páginas, ahorrando ancho de banda y mejorando la velocidad de carga.

Diseño adaptativo (Responsive):

Desarrollo: Evita la duplicación de código para distintos dispositivos. Mediante las reglas @media de CSS, la misma estructura de datos HTML se reorganiza y adapta visualmente según el tamaño de la pantalla (móvil, tablet, escritorio) o el medio (pantalla, impresión).

Accesibilidad:

Desarrollo: Garantiza un árbol DOM semántico y libre de ruido visual. Las tecnologías de asistencia (como lectores de pantalla para personas con discapacidad visual o dispositivos Braille) pueden navegar e interpretar la información siguiendo un orden estrictamente lógico e intencional.

Mejor SEO:

Desarrollo: Los motores de búsqueda (como Google) evalúan positivamente la proporción entre contenido de texto y código. Al no tener que filtrar instrucciones de diseño dentro del HTML, las arañas web (crawlers) indexan los contenidos clave de forma más rápida, precisa y eficiente.

Trabajo en paralelo:

Desarrollo: Permite desacoplar las capas de trabajo en el equipo. Los desarrolladores de backend o maquetadores pueden estructurar los datos e integración en HTML mientras el equipo de UI/UX diseña y ajusta los estilos en CSS, reduciendo dependencias y conflictos en sistemas de control de versiones (Git).