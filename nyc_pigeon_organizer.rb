pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)

  h = {}

  names_arr = data[:color].flat_map {|color, names| names }.uniq

  names_arr.each do |name|
    inner_h = {}
    color_value = data[:color].find_all{|color, names| names.include?(name)}.collect{|color, names| color}
    inner_h[:color] = color_value
    h[name] = inner_h[:color]
  end


end

nyc_pigeon_organizer(pigeon_data)
