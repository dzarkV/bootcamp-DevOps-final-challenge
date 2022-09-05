# Hello World Nodejs

`/hello` - Retorna hello world

# Challenges

- Ejecutando localmente con `npm run start` Puede Acceder con el endpoint`/hello` En el contenedor docker puedo ver que el proceso se está ejecutando pero siempre obtengo `connection refused`
- Mi docker builds parecen más lentas de lo que deberían ser... y mi docker images son muy pesadas
- ¿Mi dockerfile es bueno para producción?

La conexión rechazada fue arreglada con el comando que iniciaba la aplicación en el `package.json`. 
Para hacer `build` más ligero se definió el tag con `node` y `alpine` como imágenes base. 
También se actualizan paquetes y se instalan desde el `Dockerfile`, lo que podría mejorar la seguridad para producción.