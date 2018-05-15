const http = require('http');
const dt = require('./firstModule');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-type', 'text/plain');
    res.write("The current date and time: " + dt.myDateTime());
    res.write('Hello world');
    res.end();
});

server.listen(port, hostname, () => {
    console.log('Server started at port ' + port);
});