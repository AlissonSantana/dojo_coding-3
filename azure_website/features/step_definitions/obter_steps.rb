Quando(/^obter lista de Autores através do endpoint 'api\/authors'$/) do
@obt = ObtAutor.new.get(2)
puts @obt
end

Então(/^o teste será validado$/) do
	puts @obt
end
