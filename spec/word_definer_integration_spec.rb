require "capybara/rspec"
require "./app"
require "pry"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word creation path', {:type => :feature} do
  it 'takes the user to the homepage where they can add a word to the list' do
    visit '/'
    fill_in('Word', :with => 'Parched')
    click_button('Add!')
    expect(page).to have_content('Parched')
  end
end

describe 'the word definition page path', {:type => :feature} do
  it 'shows a word definition page' do
    word_test = Word.new({:word => 'Parched', :id => nil})
    word_test.save
    test_definition = Definition.new({:definition => 'Very thirsty'})
    test_definition.save
    visit "/word_names/#{id}"
    click_link('Parched')
    fill_in('Definition', :with => 'Very Thirsty')
    click_button('Add!')
    expect(page).to have_content('Very Thirty')
  end
end
