# LENGUAJE MARCAS EXAMEN 1
## HTML (1994)
* Surge del CERN.
* Creador/fundador: Tim Barners Lee.
* Nace en base a un perfil simplificado de SGMl (Standard Generalized Markup Language), que es un estándar para crear lenguajes de marcas.
* Se crea un documento descriptivo con unos veinte elementos orientados a estructuras texto.
* Etiquetas que surgen: `<html>`, `<head>`, `<body>`, `<h1>`-`<h6>`, `<p>`, `<a>`.
* No se podía procesar multimedia de forma nativa.
## HTML 2.0 (1995)
* Llega el estándar formal (HTML 2.0) publicado por el IETF (Internet Engineering Task Force) bajo el estándar RFC 1866.
* Integración nativa de imágenes como GIF (``<img>``).
* Formularios `<form>`, `<input>`, `<select>`, `<textarea>`.
* Transferencia de información entre cliente y servidor mediante HTTP GET y POST.
* Soporte para más carácteres fuera de la codificación ASCII.
## HTML 3.2 (1997)
* El W3C (Wolrd Wide Web) estandariza la versión HTML 3.2 en 1997.
* Introduce modelo de tablas (`<table>`, `<tr>`, `<td>`).
* Se introducen etiquetas visuales (`<font>`, `<color>`).
* Permite ejecución de código y scripts (`<applet>`).
## HTML 4.01 y XHTML 1.0 (1999-2000)
* HTML 4.01 separa la estructura de la capa de presentación.
* Se desaconsejan las etiquetas visuales y se recomienda el uso de CSS (Cascading Style Sheet).
* Se define tres tipos de sintaxis un documento (Document Type Definition):
    * Strict (no se permiten etiquetas de diseño)
    * Transitional (sí se permiten etiquetas de diseño, para webs antiguas)
    * Frameset (sí se permiten etiquetas de diseño y el uso de elementos de incrustación [`<iframe>`])
* Se reformula el estándar y pasa a llamarse XHTML 1.0 (2000)
    * Sigue las reglas estrictas de XML
    * Exige un árbol DOM perfecto, sensibilidad a mayúsculas y entrecomillado perfecto.
## HTML 5 (2014)
* Desarrollado inicialmente por WHATWG (organización similar a W3C) en 2004.
* Aceptado por W3C en 2014.
* Reemplaza la sintaxis original (SGML/DTD) por un algoritmo de parseo determinista (`<doctype HTML>`).
* Introduce elementos semánticos para definir la estructura de la información ( ``<header>`` , ``<nav>`` , ``<main>`` , ``<article>`` , ``<section>`` , ``<footer>``).
* Multimedia nativa (`<audio>`, `<video>`.)
* Etiqueta `<canva>` para elementos gráficos y soporte para Web GL.
* Formularios con validación nativa gracias a tipos (``email``, ``name``).
* Control del historial de navegación.
## XHTML VS HTML 
* HTML: opera mediante algoritmo determinista que asume errores de sintaxis.
* XHTML: sintaxis estricta XML.
    * Exige documento bien formado.
    * Si el analizador sintácitco (parse XML) detecta cualquier error de sintaxis salta error (Yellow Screen of Death).
    * XPATH: para navegar entre etiquetas y hacer consultas de los datos en un inventario.
### RESUMEN
* HTML: para humanos.
* XHTML: para máquinas y humanos (p. ej: bases de datos).
## PROBLEMAS INCRUSTAR CSS EN EL MISMO HTML
* Dispersión del código HTML.
* Más peso en cada archivo HTML.
* Imposible adaptar la interfaz de forma responsiva en diferentes pantallas.
## VENTAJAS SEPARAR HTML DE CSS
* Simpliifica mantenimiento global.
* El navegador guarda en caché el diseño y se mejora el rendimiento.
* Mejor accesbilidad y SEO al ofrecer jerarquia semántica (para lectores de pantalla y buscadores)
* Permite adaptar el diseño a diferentes pantallas (media queries).
