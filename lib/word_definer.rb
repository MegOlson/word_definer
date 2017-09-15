
class Word
  @@list = []
  attr_reader :id, :list
  attr_accessor :word, :definition

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = []
    @id = @@list.length + 1
  end

  def save
    @@list.push(self)
  end

  def self.all()
    @@list
  end

  def add_def(definition)
    @definitions.push(definition)
  end

  def self.clear()
    @@list = []
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
