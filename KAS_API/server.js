import { fastify } from "fastify"; //import do fastify(biblioteca do server)

const server = fastify(); // constante do servidor que ao usar o método fastify cria o objeto do servidor 


const stack = [] // stack para guardar itens de um post ou put 

//endpoints:

//get de teste 
server.get('/', () =>{
    return "Bem vindo";
});

//login - vai ser post porque vou mandar um objeto para o servidor e lá é que vou checar se o login é válido ou não
server.post('/login', (request, reply) => {
    const item = request.body.item
    stack.push(item)
    reply.send(stack)
})



//@Server
//dizer onde o servidor vai estar "hospedado" em que porta, também mostra erros na consola
server.listen(5000, (err) => {
    if (err) {
      console.log(err)
      process.exit(1)
    } else {
      console.log(`Server running, navigate to localhost:5000`)
    }
  })

  //executar npm run dev para iniciar o server
