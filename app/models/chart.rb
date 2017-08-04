class Chart
  def self.width(device)
    if device == "mobile"
      "300px"
    else
      "600px"
    end
  end
end
