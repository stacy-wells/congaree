require 'rails_helper'

RSpec.describe ApplicationHelper do
  describe "#hero_image_name" do
    it "returns the default name of the hero image based on the absense of a park" do
      expect(helper.hero_image_name(nil)).to eq("hero.png")
    end

    it "returns the name of the hero image based on the presence of a park" do
      park = Park.create(name: "Test Park")
      expect(helper.hero_image_name(park)).to eq("hero/test_park_hero.jpg")
    end
  end
end
