


def nyc_pigeon_organizer(data)

  h = {}

  names_arr = data[:color].flat_map {|color, names| names }.uniq

  names_arr.each do |name|
    inner_h = {}

    #get the colors of the pigeon
    color_value = data[:color].find_all{|color, names| names.include?(name)}.collect{|color, names| color}
    inner_h[:color] = color_value.to_s

    #get the gender of the pigeon
    gender_value = data[:gender].find_all{|gender, names| names.include?(name)}.collect{|gender, names| gender}
    inner_h[:gender] = gender_value.to_s

    #get the life of the pigeon
    lives_value = data[:lives].find_all{|lives, names| names.include?(name)}.collect{|lives, names| lives}
    inner_h[:lives] = lives_value.to_s

    #add it all to the hash! yahoo!
    h[name] = inner_h
  end
  h
end
