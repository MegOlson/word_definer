require 'rspec'
require 'word_definer'

describe "Word" do
  before() do
    Word.clear()
  end
end
describe(".all") do
   it("is empty at first") do
     expect(Word.all()).to(eq([]))
   end
 end
describe("#save") do
  it("saves a word to the list of words") do
    word = Word.new("parched", "very thirsty")
    word.save()
    expect(Word.all()).to(eq([word]))
  end
end
describe(".clear") do
  it("clears all words from the list") do
    word = Word.new("parched", "very thirsty")
    word.save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end
describe("#id") do
  it("increments an id by 1 each time a new word is added") do
    word = Word.new("parched", "very thirsty")
    word.save()
    word2 = Word.new("starved", "very hungry")
    word2.save()
    expect(word.id()).to(eq(1))
    expect(word2.id()).to(eq(2))
  end
end
