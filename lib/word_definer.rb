class Word
  @@list = []
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def self.all()
    @@list
  end

  def self.find(name)
  end

end
