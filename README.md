# ThesisUTPL
_Formato de LaTeX para tesis de la Universidad Técnica Particular de Loja (UTPL)._

## Comenzando 🚀

Para empezar la escritura de tu tesis con la plantilla **ThesisUTPL**, haz lo siguiente: 

- Descarga todos los archivos del repositorio _**ThesisUTPL**_.
- Duplica la carpeta de ejemplo que has descargado. 
- Abre el fichero _**main_Thesis.tex**_ con tu editor preferido de _LaTeX_.
- Guarda el archivo con un nuevo nombre. 
- Antes de realizar cualquier cambio, compila el archivo para verificar que no existe ningún error. Luego de la compilación deberías obtener como resultado un documento similar a _**main_Thesis.pdf**_ . Puede que requieras instalar nuevos paquetes en tu distribución o actualizarla para compilar correctamente. 
- Selecciona las opciones de la clase de acuerdo a tu necesidad (cantidad de autores, estilo de citas y bibliogafría). 
- Modifica la información básica de acuerdo a tu caso. 
- Ten en cuenta que se ha creado una carpeta para las figuras y otra para los documentos. Trata de mantener ese orden. En la carpeta _"DOCUMENTS"_ se encuentran archivos _**.tex**_ que corresponden a las diferentes partes del documento. 
- Escribe cada capítulo en un fichero _**.tex**_ independiente y guárdalo en la carpeta _"DOCUMENTS"_. Agrégualos en el punto del documento deseado utilizando para ello el comando:
		
    `\input{DOCUMENTS/nombre_del_fichero.tex}`
    
- Utiliza las indicaciones dadas en el documento de ejemplo para el manejo de figuras, tablas, ecuaciones, etc. Además, recuerda compilar frecuentemente el documento. 

### Pre-requisitos 📋

Para utilizar la plantilla ***ThesisUTPL*** requieres tener instalado una distribución TEX, por ejemplo: _**TeXLive**_ (Windows, Linux, Mac), _**Mactex**_ (Mac OSX) y _**Miktex**_ (Windows). Además, es conveniente tener un editor para editar de manera cómoda el texto y acceder de manera sencilla a las tareas usuales de una sesión LATEX, como son: editar, compilar y visualizar. 

Las pruebas de esta plantilla fueron realizadas con _**Miktex 2.9**_ sobre Windows 7 y 10. Como editor se empleó _**TexStudio 2.12.16**_. Sin embargo, no deberia haber inconveniente para trabajar bajo otras distribuciones o otros editores. Escoge el de tu preferencia. 

## Contribuyendo 🖇️

Puedes sugerir cambios en la plantilla o notificar errores escribiendo al correo electrónico de [Francisco Sandoval](mailto:fasandoval@utpl.edu.ec?subject=ThesisUTPL-Latex). Por favor, agregua como título del mensaje "ThesisUTPL-Latex".

## Versionado 📌

Se usa una modificación de [SemVer](http://semver.org/) para el versionado.

## Autor ✒️

* **Francisco Alberto Sandoval Noreña** - *Creación de plantilla y documentanción* - [fasandovaln](https://github.com/fasandovaln).

## Licencia 📄

Este proyecto está bajo la Licencia (GNU GPLv3) - mira el archivo [LICENSE](https://github.com/fasandovaln/ThesisUTPL/blob/master/LICENSE) para detalles.

## Expresiones de Gratitud 🎁

* Comenta a otros sobre esta plantilla 📢
* Comparte en redes sociales la plantilla :+1:
* Invítame un café :coffee:
* Da las gracias públicamente 🤓
* etc.

---
**Nota:** El formato del archivo _readme_ ha sido basado en la [plantilla](https://gist.github.com/Villanuevand/6386899f70346d4580c723232524d35a) realizada por [Villanuevand](https://github.com/Villanuevand).
