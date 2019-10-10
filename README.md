# ThesisUTPL
_Formato de LaTeX para tesis de la Universidad Técnica Particular de Loja (UTPL)._

## Comenzando 🚀

Los pasos que debes seguir para empezar la escritura de una tesis nueva con la plantilla _**ThesisUTPL.cls**_ son los siguientes: 

- Duplica la carpeta de ejemplo que has descargado. 
- Abre el fichero _**main_Thesis.tex**_ con tu editor preferido de _LaTeX_.
- Guarda el archivo con un nuevo nombre. 
- Antes de realizar cualquier cambio, compila el archivo para verificar que no existe ningún error. Luego de la compilación deberías obtener como resultado un documento similar a _**main_Thesis.pdf**_ . Puedes requerir instalar nuevos paquetes en tu distribución o actualizarla para compilar correctamente. 
- Selecciona las opciones de la clase de acuerdo a tu necesidad. 
- Modifica la información básica de acuerdo a tu caso. 
- Ten en cuenta que se ha creado una carpeta para las Figuras y otra para los documentos. Trata de mantener ese orden. En la carpeta _"DOCUMENTS"_ se encuentran archivos _**.tex**_ que corresponden a las diferentes partes del documento. 
- Escribe cada capítulo en un fichero _**.tex**_ independiente y guárdalo en la carpeta _"DOCUMENTS"_. Agrégualos en el punto del documento deseado utilizando para ello el comando:
		
    `\input{DOCUMENTS/nombre_del_fichero.tex}`
    
- Utiliza las indicaciones dadas en el documento de ejmplo para el manejo de figuras, tablas, ecuaciones, etc. Además, recuerda compilar frecuentemente el documento. 


