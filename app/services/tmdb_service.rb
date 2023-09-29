# app/services/tmdb_service.rb
require 'net/http'
require 'json'

class TmdbService
  BASE_URL = "https://api.themoviedb.org/3/search/movie"

  def self.search(query)
    uri = URI(BASE_URL)
    uri.query = URI.encode_www_form({
      api_key: ENV['TMDB_API_KEY'],
      query: query
    })
  
    response = Net::HTTP.get(uri)
    json = JSON.parse(response)
  
    # Return all movie results
    json["results"]
  end  
  
end
