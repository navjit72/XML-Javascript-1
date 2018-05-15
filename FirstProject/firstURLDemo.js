/*
 * url module to read and split the url query string
 */

const http = require('http');
const url = require('url');

const hostname = 'localhost';
const port = 8080;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-type', 'text/plain');
    const q = url.parse(req.url,true).query;
    const txt = q.date +" "+q.month;
    res.write(txt);
    res.end();
});

server.listen(port, hostname, () => {
    console.log('Server started at port ' + port);
});