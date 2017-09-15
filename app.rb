require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')

get('/') do
  @list = Word.all()
  erb(:index)
end

get('/word_names/:id') do
  @word = Word.find(params[:id])
  erb(:word)
end

post('/') do
  name = params["name"]
  word = Word.new(name)
  word.save()
  @list = Word.all()
  erb(:index)
end

post('/def') do
  definition = params["definition"]
  definition = Word.new(definition)
  definition.save()
  @def_list.push(definition)
  Word.def_display(definition)
  erb(:word)
end
