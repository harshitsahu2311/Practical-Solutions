const http = require('http')

const PORT = 10000

const server = http.createServer((request,response)=>{
    response.writeHead(200,{'Content-Type':'text/html'});
    response.end('Hello world, This is my Node.js server.')
})


server.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});
