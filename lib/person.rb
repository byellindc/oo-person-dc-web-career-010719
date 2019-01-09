class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10 
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    return @happiness
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10 
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    return @hygiene
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath  
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      convo = "blah blah partisan blah lobbyist"
      self.happiness = self.happiness - 2
      friend.happiness = friend.happiness - 2
    elsif topic == "weather"
      convo = "blah blah sun blah rain"
      self.happiness = self.happiness + 1
      friend.happiness = friend.happiness + 1
    else 
      convo = "blah blah blah blah blah"
    end

    return convo
  end
end