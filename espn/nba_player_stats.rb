require "net/http"
require 'json'
require 'pry'

API_KEY = "bfnk8ndmj8wtnavxdd56xb58"

uri = URI("http://api.espn.com/v1/sports/basketball/nba/athletes/?groups=7&apikey=#{API_KEY}")

raw_data = Net::HTTP.get(uri)

json = JSON.parse(raw_data)

puts JSON.pretty_generate(json)

binding.pry
teams.each do |team|
end
