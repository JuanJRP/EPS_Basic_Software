//REQUERIMIENTOS QUE USAREMOS DE LAS PIP.
const express = require('express');
const engine = require('ejs-mate');
const path = require('path');

//INICIALIZACIONES.
const app = express();
require('./db');

//CONFIGURACIONES.
app.use(express.static(__dirname + '/Sources'));
app.set('views', path.join(__dirname, 'Views'));
app.engine('ejs', engine);
app.set('view engine', 'ejs');
app.set('port', process.env.PORT || 3000);

//RUTAS.
app.use('/', require('./Routes/index'));

//INICIALIZACION DEL SERVIDOR.
app.listen(app.get('port'), () => {
    console.log('server on port', app.get('port'));
});