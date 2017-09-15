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
