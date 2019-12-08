


def nyc_pigeon_organizer(data)

  h = {}

  names_arr = data[:color].flat_map {|color, names| names }.uniq

  names_arr.each do |name|
    inner_h = {}

    #get the colors of the pigeon
    color_value = data[:color].find_all{|color, names| names.include?(name)}.collect{|color, names| color.to_s}
    inner_h[:color] = color_value.

    #get the gender of the pigeon
    gender_value = data[:gender].find_all{|gender, names| names.include?(name)}.collect{|gender, names| gender.to_s}
    inner_h[:gender] = gender_value.

    #get the life of the pigeon
    lives_value = data[:lives].find_all{|lives, names| names.include?(name)}.collect{|lives, names| lives.to_s}
    inner_h[:lives] = lives_value.

    #add it all to the hash! yahoo!
    h[name] = inner_h
  end
  h
end
