Dado(/^que esteja validado o 'staus\-code'$/) do
  @resposta = HTTParty.get("http://swapi.co/api/films/", :headers => {'Content-Type' => 'application/json'})
  	expect(@resposta.code).to eq 200
end

Quando(/^armazenado o corpo da resposta em uma variável$/) do
	@resposta['results'].each do |nomeFilme|
		 puts nomeFilme['director']
	end
end

Quando(/^exibir todos os titulos que sejam do diretor "([^"]*)" e o produtor "([^"]*)"$/) do |arg1, arg2|
	
	@resposta['results'].each do |indice|
		if indice['director'] == 'George Lucas' && indice['producer'].include?('Rick McCallum')
			puts indice['title']
		end
	end

end

