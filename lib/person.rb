# your code goes here

class Person
  attr_reader :name, :hygiene#, :happiness
  attr_accessor :bank_account#, :happiness

  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end

  def happiness=(n)
    @happiness =  n
    @happiness = 10 if (@happiness > 10)
    @happiness = 0 if (@happiness < 0)
  end

  def hygiene=(n)
    @hygiene =  n
    @hygiene = 10 if (@hygiene > 10)
    @hygiene = 0 if (@hygiene < 0)
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid amount
    @bank_account += amount
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend person
    self.happiness += 3
    person.happiness +=3
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation person, topic
    convo = ""
    if topic == "politics"
      convo = "blah blah partisan blah lobbyist"
      self.happiness -= 2
      person.happiness -= 2
    elsif topic == "weather"
        convo = "blah blah sun blah rain"
        self.happiness += 1
        person.happiness += 1
    else
      convo = "blah blah blah blah blah"
    end
    convo
  end

end
