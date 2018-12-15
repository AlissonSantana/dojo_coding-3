Dado(/^que o livro esteja criado$/) do
  puts $incluir
end

Quando(/^atualizar os dados do livro$/) do
 @atz_livro = AtualizarLivro.new.atualizar
end

Então(/^validar o a atualização do livro$/) do
  puts @atz_livro
end
