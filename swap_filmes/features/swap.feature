#language:pt
#utf-8

	Funcionalidade: Swap API Service
		Eu como sistema front-end
		Quero fazer buscas específicas no serviço 'http://swapi.co/api/films/'
		Para validar a consistencia dos dados.

		@title
		Cenário: Exibir conteúdo 'Title'
			Dado que tenha acesso ao 'Swap API Service'
			Quando buscar o 'title' de cada elemento da estrutura 'result'
			Então validar o 'status-code' da resposta da requisição

		@count
		Cenário: Armazenar o valor do campo 'count'
			Quando armazenar o valor do campo 'count'
			E enviar um no 'GET' passando o valor aleatório superior ao armazenado
			E validar status-code
			Então realizar a mensagem exibida

		@diretor
		Cenário: Exibir diretor e produtor
			Dado que esteja validado o 'staus-code'
			E armazenado o corpo da resposta em uma variável
			Quando exibir todos os titulos que sejam do diretor "George Lucas" e o produtor "Rick McCallum"
