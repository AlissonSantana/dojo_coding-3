Quando(/^incluir um livro através do endpoint 'api\/books'$/) do
  $incluir = IncluirLivro.new.incluir_livro
  expect($incluir.code).to eq 200
  puts $incluir
end

Então(/^os dados do livro serão incluidos$/) do
	puts "Livro inserido"
end
