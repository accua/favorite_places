require("rspec")
require("favorite_places")

describe(Favorite_place) do
  before() do
    Favorite_place.clear()
  end
  describe("#location") do
    it("Returns a string") do
      new_place = Favorite_place.new("Seattle")
      expect(new_place.location()).to(eq("Seattle"))
    end
  end
  describe(".all") do
    it("Creates empty array") do
      expect(Favorite_place.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("Save input to array") do
      new_place = Favorite_place.new("Guatemala")
      new_place.save()
      expect(Favorite_place.all()).to(eq([new_place]))
    end
  end
  describe(".clear") do
    it("Clears the array to start again") do
      Favorite_place.new("Guatemala").save()
      Favorite_place.clear()
      expect(Favorite_place.all()).to(eq([]))
    end
  end
end
