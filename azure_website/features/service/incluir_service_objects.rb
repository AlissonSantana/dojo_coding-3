class IncluirLivro

	include HTTParty

	base_uri "http://fakerestapi.azurewebsites.net"

	def incluir_livro
		self.class.post("/api/books",
		:body => {'Title' => 'livro Dom Casmurro', 'Description' => 'Teste 123',
  			 	'PageCount' => '256', 'Excerpt' => 'Sumário Resumido',
  			 	'PublishDate' => '2017-06-15T13:00:00.549505+00:00'}.to_json,
  		:headers => {'Content-Type' => 'application/json'})
	end
end
