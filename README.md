# Blog

Siga o passo a passo para ter o exmeplo funcionando.

Primeiramente é necessário instalar a linguagem Elixir.
### Elixir no Mac OS X
```sh
brew install elixir
```

### Elixir no Ubuntu
```sh
$ wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
$ sudo apt-get update
$ sudo apt-get install elixir
```

### Dependências
Após isso, clone esse repositório, acesse o diretório desejado e execute os seguintes passos:

  * Instale as dependências com o comando `mix deps.get`
  * Crie e migre o banco de daods com os comandos `mix ecto.create && mix ecto.migrate`
  * Instale as dependências do Node.js com o comando `npm install`

Crie o recurso `Post` pelo comando:

`mix phoenix.gen.html Post posts title body:text author_id:references:users`

Isso irá gerar uma migração para criar a tabela posts com os campos `title`, `body` e `author` (que é uma referência a usuários).

Adicione o recurso às rotas abrindo o arquivo router.ex e adicionando o seguinte código:
```elixir
scope "/", Blog do
  pipe_through :browser
  resources "/posts", PostController
end
```

Após isso, tudo pronto. Inicie o servidor pelo comando:
`mix phoenix.server`.

Acesse o sistema pelo browser no endereço `http://localhost:8000`.
