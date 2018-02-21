# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name,:happiness, :hygiene

  def initialize(name)
    @name=name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end #initialize

  def call_friend(friend)
    self.happiness=(@happiness+3)
    friend.happiness=(friend.happiness+3)
    # "Hi Penelope! It's Felix. How are you?"
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end #call_friend

  def clean?
    true ? @hygiene > 7 : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end #get_paid

  def happiness=(happiness)
    @happiness=happiness
    @happiness=10 if @happiness > 10
    @happiness=0 if @happiness < 0
  end #happiness=

  def happy?
    true ? @happiness > 7 : false
  end

  def hygiene=(hygiene)
    @hygiene=hygiene
    @hygiene=10 if @hygiene > 10
    @hygiene=0 if @hygiene < 0
  end #happiness=

  def start_conversation(friend, topic)
    return_string = nil
    if topic == "politics"
      return_string  = "blah blah partisan blah lobbyist"
      self.happiness=(@happiness-2)
      friend.happiness=(friend.happiness-2)
    elsif topic == "weather"
      return_string = "blah blah sun blah rain"
      self.happiness=(@happiness+1)
      friend.happiness=(friend.happiness+1)
    else
      return_string =  "blah blah blah blah blah" 
    end #if

    return_string
  end #start_conversation

  def take_bath
    self.hygiene=(@hygiene+4)
    # new_hygiene = @hygiene + 4
    # # @hygiene += 4
    # hygiene=(new_hygiene)
    # puts "******#{@hygiene}"
    # # @hygiene=(new_hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end #take_bath

  def work_out
    self.hygiene=((@hygiene-3))
    self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
  end #workout
end #class
