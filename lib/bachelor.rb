require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = " "
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      first_name = contestant["name"].split(" ")[0]
     return first_name
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  count = 0
  data[season].each do |contestant|
    ages += contestant["age"].to_f
    count += 1
  end
  return (ages/count).round
end
