class ObtAutor

	include HTTParty

	base_uri "http://fakerestapi.azurewebsites.net"

	def get(index)
		self.class.get("/api/authors/#{index}")
	end

	def obter
		self.class.get("/api/authors/#{index}")
		@autor['FirstName'].each do |nome|
			print nome
		end

	end
end
