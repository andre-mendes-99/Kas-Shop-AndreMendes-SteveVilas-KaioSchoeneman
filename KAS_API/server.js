import { fastify } from "fastify";
const server = fastify();
server.get('/', () =>{
    return "Bem vindo";
});


//endpoints
server.get('/turma', () =>{
    return "Node é fixe";
});

server.listen({
    port: 3333
});