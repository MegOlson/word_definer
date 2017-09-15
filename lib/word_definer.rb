class Word
  @@list = []
  attr_reader :id
  attr_accessor :word, :definition

  def initialize(word, definition)
    @word = word
    @definition = definition
    @id = @@list.length + 1
  end

  def save
    @@list.push(self)
  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end

  def def_display(definition)
    @def_list = []
    @def_list.push(definition)
  end

  def self.find(id)
    word_id = id.to_i()
    @@list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end
end
