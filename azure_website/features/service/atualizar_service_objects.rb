class AtualizarLivro

	include HTTParty

	base_uri "http://fakerestapi.azurewebsites.net"

  def atualizar
    self.class.put("/api/books/#{2}",
		:body => {'Title' => 'livro Dom Casmurro', 'Description' => 'Teste 123',
  			 	'PageCount' => '256', 'Excerpt' => 'Edição Especial do Dia das Mães',
  			 	'PublishDate' => '2017-06-15T13:00:00.549505+00:00'}.to_json,
  		:headers => {'Content-Type' => 'application/json'})
  end
end
