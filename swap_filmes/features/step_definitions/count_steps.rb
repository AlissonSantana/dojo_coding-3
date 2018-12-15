Quando(/^armazenar o valor do campo 'count'$/) do
	@resp = HTTParty.get("http://swapi.co/api/planets/", :headers => {'Content-Type' => 'application/json'})
	novonumero = @resp['count']
	puts novonumero
end

Quando(/^enviar um no 'GET' passando o valor aleatório superior ao armazenado$/) do
	novonumero = @resp['count'] + rand(1..10)
	puts novonumero
    @resp = HTTParty.get("http://swapi.co/api/planets/#{novonumero}", :headers => {'Content-Type' => 'application/json'})

end

Quando(/^validar status\-code$/) do
  	expect(@resp.code).to eq 404
    puts @resp.code
end

Então(/^realizar a mensagem exibida$/) do
puts @resp.body
end
