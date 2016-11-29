require("sinatra")
require("sinatra/reloader")
require("./lib/favorite_places")
also_reload("lib/**/*.rb")

get("/") do
  @location = Favorite_place.all()
  erb(:index)
end

post("/favorite_places") do
  location = params.fetch("place")
  all_places = Favorite_place.new(location)
  all_places.save()
  erb(:favorite_places)
end
