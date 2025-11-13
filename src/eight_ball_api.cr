require "json"
require "http/client"

class EightBallApi
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://www.eightballapi.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_random_fortune() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}", headers: @headers).body)
  end

  def get_categories() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/categories", headers: @headers).body)
  end

  def get_category(category : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/#{category}", headers: @headers).body)
  end

  def get_biased_fortune(grade : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/biased", headers: @headers).body)
  end
end
