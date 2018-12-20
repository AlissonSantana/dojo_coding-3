class SwapiApi

  include HTTParty

  base_uri 'http://swapi.co/api'

  def obter_filmes(indice=nil)
    self.class.get("/films/#{indice}")
  end

  def obter_planetas(indice=nil)
    self.class.get("/planets/#{indice}")
  end


end
