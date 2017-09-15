require 'rspec'
require 'definition'

describe("Word#add_def") do
  it("saves a definition to the word") do
    new_definition = Definition.new(definition)
    expect(Word.add_def).to(eq("Very thirsty"))
  end
end
