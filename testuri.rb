require 'uri'

uri = URI("http://www.msn.com")
#=> #<URI::HTTP:0x00000000b14880
puts uri.scheme
#=> "http"
puts uri.host