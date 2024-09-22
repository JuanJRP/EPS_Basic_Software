const express = require('express');
const http = require('http');
const fs = require('fs').promises;
const app = express();
const server = http.createServer(app);
const conection = require("./DB.js");

app.use(express.static(__dirname));

app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    fs.readFile(__dirname + '/Index.html')
        .then(contents => {
            res.setHeader('Content-Type', 'text/html');
            res.status(200).end(contents);
        })
        .catch(err => {
            res.status(500).end(err);
            return;
        });
});

server.listen(8000, () => {
    console.log(`Server en Linea: http://localhost:8000`);
});

/*conection.query('SELECT * from citas', (err, rows) => {
    if(err) throw err
    console.log('Los datos son:')
    console.log(rows)
})*/

app.post("/procesar-formulario", async (req, res) => {
    console.log(req.body);
    
    const accion = req.body.accion;
    
    console.log(accion)

    if (accion === "enviar") {
        conection.query('SELECT * from citas', (err, rows) => {
            if(err) {
                throw err;
            }
            const htmlTable = generateHtmlTable(rows);
            
            const responseHtml = `
                <h1>Tabla de Citas</h1>
                <div id="tabla-citas">${htmlTable}</div>
            `;
            
            // Envía el fragmento HTML como una respuesta JSON al cliente
            res.json({ html: responseHtml });
        });
    } else if (accion === "guardar") { }
});


app.get('/obtenerDatos', (req, res) => {
    conection.query('SELECT * from citas', (err, rows) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Error en la consulta de la base de datos' });
        }
        res.json(rows);
        
    });
});

function generateHtmlTable(data) {
    // Genera una tabla HTML a partir de los datos
    let html = '<table border="1">';
    // Encabezados de la tabla
    html += '<tr>';
    for (const field in data[0]) {
        html += `<th>${field}</th>`;
    }
    html += '</tr>';
    // Datos de la tabla
    data.forEach((row) => {
        html += '<tr>';
        for (const field in row) {
            html += `<td>${row[field]}</td>`;
        }
        html += '</tr>';
    });
    html += '</table>';
    return html;
}