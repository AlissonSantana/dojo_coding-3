class Title

	include HTTParty

	base_uri "http://jsonplaceholder.typicode.com"
	format :json

	attr_reader :request_body

	def initialize
		@request_body = (YAML.load_file('./fixtures/comments_body.yml'))
	end

	## Método POST ##

=begin
	def criar (title,body,UserId)

		json = self .request_body("post_comments_json")
		json = ["title"] = title
		json =["body"] = body
		json = ["UserId"] = userid.to_s
		self.class.post("/comments/", :headers => {'Content-type' => 'aplication/json'}, :body => json.to_json)
	end
=end
		## MÉTODO GET ##


	def buscar (index=nil)
		self.class.get("/comments/#{index}")
	end
end
