module ApplicationHelper
  def hero_image_name(park)
    if park.nil?
      "hero.png"
    else
      "hero/#{park.name.downcase.gsub(' ', '_')}_hero.jpg"
    end
  end
end
