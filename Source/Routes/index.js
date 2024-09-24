const express = require('express'); //TRAEMOS EL API DE EXPRESS QUE NOS AYUDARA CON LA DIRECCIONES.
const router = express.Router(); //UTILIZAMOS UNA EXTENCION DE EXPRESS PARA REDIRECCIONAR DEPENDIENDO DE LA ACCION.
const conection = require('../db');

router.get('/', (req, res, next) => {
    res.render('index'); 
});

router.get('/Usuarios', (req, res, next) => {
    conection.query('SELECT * from usuario', (err, rows) => {
        if (err) {
            console.error('Error al ejecutar la consulta:', err);
            res.status(500).send('Error en la consulta');
        } else {
            res.render("Usuarios", {datos: rows});
        }
    });
});

router.get('/Doctores', (req, res, next) => {
    conection.query('SELECT * from doctores', (err, rows) => {
        if (err) {
            console.error('Error al ejecutar la consulta:', err);
            res.status(500).send('Error en la consulta');
        } else {
            res.render("Doctores", {datos: rows});
        }
    });
});

router.get('/Citas', (req, res, next) => {
    conection.query('SELECT * from citas', (err, rows) => {
        if (err) {
            console.error('Error al ejecutar la consulta:', err);
            res.status(500).send('Error en la consulta');
        } else {
            res.render("Citas", {datos: rows});
        }
    });
});

router.get('/intento', (req, res, next) => {

});

module.exports = router; //EXPORTAMOS LAS RUTAS PARA QUE PODAMOS USARLAS EN EL RESTO DE PROYECTOS.