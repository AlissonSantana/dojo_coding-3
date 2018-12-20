Dado(/^que obtenha a lista de filmes$/) do
  @resposta = SwapiApi.new.obter_filmes
  expect(@resposta.code).to eq 200
end

Então(/^exibo os filmes com sucesso$/) do
  @resposta['results'].each do |resultado|
    puts resultado['title']
  end
end

Dado(/^que obtenha a lista de planetas$/) do
  @resposta = SwapiApi.new.obter_planetas
  expect(@resposta.code).to eq 200
  @indice_inexistente = @resposta['count'] + 10
end

Quando(/^pesquiso por um indice maior que o total$/) do
  @resposta = SwapiApi.new.obter_planetas(@indice_inexistente)
end

Então(/^é exibido a mensagem "([^"]*)" com o código (\d+)$/) do |mensagem, codigo|
  expect(@resposta['detail']).to eq mensagem
  expect(@resposta.code).to eq codigo.to_i
end

Então(/^exibido os filmes diretor "([^"]*)" e produtor "([^"]*)"$/) do |diretor, produtor|
  @resposta['results'].each do |resultado|
    puts resultado['title'] if resultado['director'] == diretor && resultado['producer'].include?(produtor)
  end
end
