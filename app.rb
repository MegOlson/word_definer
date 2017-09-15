require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')

get('/') do
  @list = Word.all()
  erb(:index)
end

post('/') do
  name = params["name"]
  word = Word.new(name)
  word.save()
  @list = Word.all()
  erb(:index)
end
