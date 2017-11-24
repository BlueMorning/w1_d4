def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def check_particular_food?(person, food)
  return (person[:favourites][:things_to_eat].index(food) != nil)
end

def add_name(person, new_friend)
  person[:friends].push(new_friend)
  return person
end

def remove_friend(person, former_friend)
  person[:friends].delete(former_friend)
  return person
end

def calculate_total_amount_money(people)
  total_money_amount = 0
  for person in people
    total_money_amount += person[:monies]
  end
  return total_money_amount
end

def loan_lender_to_lendee(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
  return [lender[:monies], lendee[:monies]]
end

def find_people_set_favourite_food(people)
  favourite_food = []
  for person in people
    favourite_food += person[:favourites][:things_to_eat]
  end
  return favourite_food
end

def get_people_with_no_friends(people)
  people_without_friends = []
  for person in people
    if (person[:friends] == nil || person[:friends].length == 0)
      people_without_friends.push(person)
    end
  end
  return people_without_friends
end

def get_people_with_same_favourite_tv_show(people)

  tv_show_people = {}

  for person in people

      if (tv_show_people[person[:favourites][:tv_show]] == nil)
          tv_show_people[person[:favourites][:tv_show]] = [person[:name]]
      elsif
          tv_show_people[person[:favourites][:tv_show]].push(person[:name])
      end
  end

  people_with_same_fav_tv_show = {}

  tv_show_people.each {|tv_show, array_names|
    if(array_names.size > 1)
      people_with_same_fav_tv_show[tv_show] = array_names
    end
  }

  return people_with_same_fav_tv_show
end
