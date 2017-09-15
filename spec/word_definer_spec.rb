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
