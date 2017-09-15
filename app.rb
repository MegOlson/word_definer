require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('./lib/definition')
require 'pry'

get('/') do
  @list = Word.all()
  erb(:index)
end

post('/') do
  name = params["name"]
  new_word = Word.new(:word=> name)
  new_word.save
  @list = Word.all()
  erb(:index)
end

get('/word_names/:id') do
  @word = Word.find(params[:id])
  erb(:word)
end

post('/word_names/:id') do
  @word = Word.find(params[:id])
  definition = params["definition"]
  new_definition = Definition.new(:definition=> definition)
  @word.add_def(new_definition)
  @list = Word.all()
  erb(:word)
end
