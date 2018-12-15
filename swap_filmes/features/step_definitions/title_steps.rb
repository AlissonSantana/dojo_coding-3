Dado(/^que tenha acesso ao 'Swap API Service'$/) do

end

Quando(/^buscar o 'title' de cada elemento da estrutura 'result'$/) do
	@resposta = HTTParty.get("http://swapi.co/api/films/", :headers => {'Content-Type' => 'application/json'}) 

	#Achar puts @resposta['results']
	@resposta['results'].each do |nomeFilme|
		puts nomeFilme['title']

	end


end

Então(/^validar o 'status\-code' da resposta da requisição$/) do
  expect(@resposta.code).to eq 200
  puts "Validando o recebimento de resposta 200"
end