#language: pt
#utf-8


 Funcionalidade: Teste de serviço 'fakerestapi.azurewebsites.net/api/authors'

 	@incluir
	Cenário: Incluir livro
		Quando incluir um livro através do endpoint 'api/books'
		Então os dados do livro serão incluidos

	@obter
	Cenário: Obter autor
		Quando obter lista de Autores através do endpoint 'api/authors'
		Então o teste será validado

  @atualizar
  Cenário: Atualizar livro recém criado
    Dado que o livro esteja criado
    Quando atualizar os dados do livro
    Então validar o a atualização do livro
