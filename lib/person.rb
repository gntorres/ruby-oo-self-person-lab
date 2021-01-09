class Person

    #name is in the reader so we can not change later
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
  #set hygiene and happiness in the range (0..10)
   def hygiene=(point) 
      @hygiene = point 
      if @hygiene > 10 
         return @hygiene = 10 
      elsif @hygiene < 0 
         return @hygiene = 0 
      end 
    end 
    def happiness=(point) 
      @happiness = point
      if @happiness > 10 
         @happiness = 10 
      elsif @happiness < 0 
         @happiness = 0 
      end 
    end
  
  # The clean? and happy? methods are pretty similiar: they should return true if the happiness or hygiene points exceed seven. Otherwise they should return false.
    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end
  
    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end
  
  # The get_paid method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".
    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end
  
  #The take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        #use self to access the method from the Class
        self.hygiene= @hygiene + 4 #call the method hygiene=(point)
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
  #The work_out method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
    def work_out
      self.happiness= @happiness + 2
      self.hygiene= @hygiene - 3
      return "♪ another one bites the dust ♫"
    end
  
  #The call_friend method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
    def call_friend(friend)
      self.happiness= @happiness + 3
      friend.happiness= friend.happiness + 3
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
  #Finally, the start_conversation method should accept two arguments, the person to start a conversation with and the topic of conversation.
    def start_conversation(friend, topic)
      if topic == "politics"
        self.happiness= @happiness - 2
        friend.happiness= friend.happiness - 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness= @happiness + 1
        friend.happiness= friend.happiness + 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end
  end