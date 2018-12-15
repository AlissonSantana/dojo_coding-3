Quando(/^buscar o endereço pelo "([^"]*)"$/) do |cep|
  @response = HTTParty.get("http://correiosapi.apphb.com/cep/#{cep}")

	  puts @response["tipoDeLogradouro"] + " " + @response["logradouro"] + ", "
	   	 + @response["cidade"] + " - " + @response["estado"] + " - " + @response["cep"]

end

Então(/^visualizo de forma ordenada$/) do
	expect(@response.code).to eq 200
	puts "Validando o recebimento de resposta 200"
	puts @response.body
end
