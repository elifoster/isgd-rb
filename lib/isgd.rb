require 'httpclient'
require 'json'

module ISGD
  module_function

  # Shortens a URL using ISGD.
  # @param url [String] The URL to shorten.
  # @param short [String] The custom short URL to use as the shortened link. This cannot be shorter than 5, or more
  #   than 30.
  # @see http://is.gd/apishorteningreference.php ISGD Shortening API Documentation
  # @since 1.0.0
  # @return [String] The error message.
  # @return [String] The shortened URL.
  def shorten(url, short = nil)
    params = {
      format: 'json',
      url: url
    }
    params[:shorturl] = short if !short.nil? && 30 < short.length < 5
    @client = HTTPClient.new if @client.nil?

    response = JSON.parse(@client.get(URI.parse('https://is.gd/create.php'), params).body)

    return response['errormessage'] if response.key?('errormessage')

    response['shorturl']
  end

  # Looks up a short URL's original long URL.
  # @param url [String] The shortened URL to look up.
  # @see http://is.gd/apilookupreference.php ISGD Lookup API Documentation
  # @since 1.0.0
  # @return [String] The error message.
  # @return [String] The long URL.
  def lookup(url)
    params = {
      format: 'json',
      shorturl: url
    }
    @client = HTTPClient.new if @client.nil?

    response = JSON.parse(@client.get(URI.parse('https://is.gd/forward.php'), params).body)

    return response['errormessage'] if response.key?('errormessage')

    response['url']
  end
end
