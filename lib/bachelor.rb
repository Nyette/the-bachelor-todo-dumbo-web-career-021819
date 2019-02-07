

def get_first_name_of_season_winner(data, season)
  first_name = ""
  data[season].each do |hash|
    if hash["status"] == "Winner"
      name = hash["name"]
      name_array = name.split
      # name_array = ["Tessa", "Horst"]
      first_name += name_array[0]
    end  
  end
  first_name
end


def get_contestant_name(data, occupation)
  # returns "Beth Smalls" when passed data and "Nanny/Freelance Journalist"
  name = ""
  data.each do |season, array|
    array.each do |hash|
      if hash["occupation"] == occupation
        name += hash["name"]
      end
    end
  end
  name
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  # returns the occupation of the first contestant who hails from that hometown
  
end

def get_average_age_for_season(data, season)
  # code here
end
