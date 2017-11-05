def get_name(person)
  return person[:name]
end


def get_tv_show(person)
  return person[:favourites][:tv_show]
end


def like_food(person, food)
  if food == person[:favourites][:things_to_eat]
  return true
  end
  return false
end


def add_friend(person, new_friend)
  person[:friends]<<(new_friend)
  return person[:friends].length
end


def remove_friend(person, ex_friend)
  person[:friends].delete(ex_friend)
  return person[:friends].length
end


def money_count(group_of_friends)
  total_monies = 0
  for person in group_of_friends
    total_monies += person[:monies]
  end
  return total_monies
end


def lend_money(lendee, lender, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end


def all_favourite_food(group_of_friends)
  all_food = []
  for friend in group_of_friends
    all_food.concat(friend[:favourites][:things_to_eat])
  end
  return all_food
end


def people_with_no_friends(group_of_people)
  no_friends = []
  for person in group_of_people
    if person[:friends].count == 0
      no_friends.push(person[:name])
    end
  end
  return no_friends
end
