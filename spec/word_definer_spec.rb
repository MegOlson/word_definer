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
    word = Word.new("parched")
    word.save()
    expect(Word.all()).to(eq([word]))
  end
end
describe(".clear") do
  it("clears all words from the list") do
    word = Word.new("parched")
    word.save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end
