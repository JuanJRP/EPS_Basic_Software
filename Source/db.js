const mysql = require('mysql'); //UTILIZAMOS MONGOOSE PARA HACER LA CONEXION CON LA DB.

const Connection  = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'asignacion_citas'
})

async function conectarBaseDeDatos() {
    try {
      await Connection.connect((err) => {
      console.log('Conectado a la base de datos MySQL\nPagina : http://localhost:3000/');
    });
    } catch (err) {
      console.error('Error al conectar a la base de datos:', err);
    }
}

module.exports = Connection;

conectarBaseDeDatos();