# API-GENERATOR v1.0

`Api-Generator` nace de mi necesidad de automatizar el proceso de creación de una estructura de directorios y archivos para un servidor en Express y así ahorrar el tiempo que se tarda en dicha estructuración.

### MODO DE USO

Para usar `Api-Generator`:

1. Clonar este repositorio
2. Ejecutar con PowerShell el archivo `__addenv.ps1`
3. Ya puede usar el comando `api` para crear proyectos Node/Express/Mongoose

# PROYECTO CREADO

Todos los directorios generados contarán con un archivo `README` que mostrará una breve explicación sobre cuál será la finalidad y utilidad de los archivos que contendrán dichos directorios.

La aplicación generada necesitará de dos variables de entorno para funcionar:

```javascript
DB_URI; // URI de la base de datos (es obligatorio, pero en caso de no utilizar una base de datos sólo debe comentar la línea 2 y 8 de index.js)
PORT; // Número del puerto en el que se ejecutará la aplicación, en caso de no proporcionar utilizará 3000 por defecto
```

Las dependecias y versiones que utilizará el proyecto generado son:

```json
"dependencies": {
  "dotenv": "^16.0.3", // Para utilizar archivos .env
  "express": "^4.18.2", // Framework principal para la puesta en marcha del servidor
  "ejs": "^3.1.9", // Motor de plantillas para la utilización de HTML + JS
  "mongoose": "^7.5.1", // ODM para la interacción entre el proyecto y la base de datos
  "morgan": "^1.10.0" // Para obtener un registro de las rutas accedidas
}
```

### ACLARACIÓN

- Este script está desarrollado para PowerShell así que no funcionará con CMD.
- Para usarlo correctamente debe añadir este directorio a las variables de entorno y así poder ejecutar el script en los lugares donde desee generar un nuevo proyecto.
- Ejecutando con PowerShell el archivo `__addenv.ps1` se añadirá automáticamente la variable de entorno. En caso que se produzca un error es porque la variable ya está añadida.
- Una vez añadido a las variables de entorno, sólo debe ejecutar el comando `api` en el directorio donde se alojará el proyecto.

---

_Próximas Implementaciones_

- _Adaptabilidad para distintos bash_
- _Selección de diferentes gestores de bases de datos_
- _Selección de diferentes motores de plantillas_
- _Posibilidad de elegir que el proyecto se desarrolle con Typescript_
