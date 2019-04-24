# your code goes here

class Person

  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(amount)
  @happiness = increment_numbers(amount, 0)

end

def hygiene=(amount)
  @hygiene = increment_numbers(amount, 0)

end

def clean?
  if @hygiene > 7
    return true
  else
    false
  end
end

  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end

 def get_paid(salary)
   @bank_account += salary
   return "all about the benjamins"
 end

def take_bath
    self.hygiene= @hygiene + 4

    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.happiness= @happiness + 2
    self.hygiene= @hygiene - 3

    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness = @happiness + 3
  friend.happiness = friend.happiness + 3

  return "Hi #{friend.name}! It's #{@name}. How are you?"
end

def increment_numbers(current_number, new_number)
  total = current_number + new_number
  if total > 10
    total = 10
  elsif total < 0
    total = 0
  end
  return total
end

def start_conversation(friend, topic)
if topic == "politics"
  self.happiness = @happiness - 2
  friend.happiness = friend.happiness - 2
  return "blah blah partisan blah lobbyist"
elsif topic == "weather"
  self.happiness = @happiness + 1
  friend.happiness = friend.happiness + 1
  return "blah blah sun blah rain"
else
  return "blah blah blah blah blah"
end

end





end
