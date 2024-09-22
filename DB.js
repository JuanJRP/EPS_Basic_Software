const mysql = require('mysql')

const conection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'asignacion_citas'
})

conection.connect( (err) => {
    if(err) throw err
    console.log('conexion Exitosa')
})

module.exports = conection;