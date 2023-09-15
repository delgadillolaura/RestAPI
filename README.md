# Pruebas Automatizadas para RestAPI

Este proyecto contiene pruebas automatizadas para una RestAPI utilizando Java y Cucumber para evaluar diferentes funcionalidades. Se utiliza el entorno de desarrollo IntelliJ IDEA para escribir, organizar y ejecutar las pruebas.

## Requisitos previos

Antes de comenzar, asegúrate de tener lo siguiente instalado en tu sistema:

- IntelliJ IDEA
- Java Development Kit (JDK)
- Dependencias de Maven en el archivo `pom.xml`

## Estructura del Proyecto

La estructura del proyecto se organiza de la siguiente manera:

### Directorio `src`

1. **test**
   - `java`
     - `constants`
       - `EmployeeEndpoints`: Contiene las constantes de los enlaces a los endpoints.
     - `entities`
       - `Employee`: Contiene las clases relacionadas con la entidad "Empleado".
     - `stepDefinitions`
       - `EmployeesSteps`: Contiene las clases de definición de pasos para las pruebas.
     - `utils`
       - `Request`: Contiene los métodos para interactuar con los endpoints.
       - `Hooks`: Contiene un tiempo de espera de 60 segundos antes de cada prueba para evitar el código de respuesta "429 Too Many Requests".
     - `TestRunner`: Desde aquí se ejecutan todas las pruebas para generar reportes.
   - `resources`
     - `Employee.feature`: Archivo `.feature` que contiene los escenarios de prueba.
     - `extent.properties`: Configuración de Extent Reports.

### Directorio `test-output`

En este directorio se encuentran los reportes generados por las pruebas:

1. **HTML Report**
   - `HTMLReport`
     - `Extent.html`: Abre este archivo en tu navegador preferido para ver el reporte HTML de las pruebas.

2. **PDF Report**
   - `PdfReport`
     - `ExtentPdf.pdf`: Abre este archivo en tu explorador de archivos para ver el reporte PDF de las pruebas.

3. **Spark Report**
   - `SparkReport`
     - `Spark.html`: Abre este archivo en tu navegador preferido para ver el reporte Spark de las pruebas.

## Ejecución de Pruebas

Para ejecutar las pruebas, sigue estos pasos:

1. Abre el proyecto en IntelliJ IDEA.
2. Asegúrate de que las dependencias de Maven se hayan descargado correctamente.
3. Navega hasta la ubicación de los archivos `.feature` en `src → test → resources`.
4. Selecciona el archivo `.feature` que deseas ejecutar (por ejemplo, `Employee.feature`).
5. Haz clic derecho en el archivo `.feature` seleccionado y selecciona "Run" para ejecutar esa prueba específica.

También puedes ejecutar todas las pruebas desde `TestRunner` para generar los reportes.

## Notas adicionales

- Las pruebas son ejecutadas utilizando el framework JUnit y Cucumber.