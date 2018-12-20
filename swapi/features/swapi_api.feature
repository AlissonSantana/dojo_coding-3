#language: pt

@swapi_api
Funcionalidade: The Star Wars API
  Eu como usuário
  Desejo acessar os dados do Star Wars
  Para mostrar nesse treinamento

  @exibir_filmes
  Cenário: Exibir todos os filmes do Star Wars
    Dado que obtenha a lista de filmes
    Então exibo os filmes com sucesso

  @buscar_planeta_inexistente
  Cenário: Buscar pelo indice de um planeta inexistente
    Dado que obtenha a lista de planetas
    Quando pesquiso por um indice maior que o total
    Então é exibido a mensagem "Not found" com o código 404

  @filmes_george
  Cenário: Exibir titulos do diretor George Lucas e que o produtor Rick McCallum tenha participado
    Dado que obtenha a lista de filmes
    Então exibido os filmes diretor "George Lucas" e produtor "Rick McCallum"
