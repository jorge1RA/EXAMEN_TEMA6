const http = require("http");

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/html");
  res.end("<h1>EXAMEN_TEMA6_JRA</h1>");
});

const port = 8080; // Usando 8080 para coincidir con la configuración de Docker

server.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
