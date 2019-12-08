require 'pp'

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

    #get the colors of the pigeon
    color_value = data[:color].find_all{|color, names| names.include?(name)}.collect{|color, names| color}
    inner_h[:color] = color_value

    #get the gender of the pigeon
    gender_value = data[:gender].find_all{|gender, names| names.include?(name)}.collect{|gender, names| gender}
    inner_h[:gender] = gender_value

    #get the life of the pigeon
    lives_value = data[:lives].find_all{|lives, names| names.include?(name)}.collect{|lives, names| lives}
    inner_h[:lives] = lives_value

    #add it all to the hash! yahoo!
    h[name] = inner_h
  end

  pp h

end

nyc_pigeon_organizer(pigeon_data)
