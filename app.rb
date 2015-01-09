require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency')

get('/form') do
  erb(:form)
end

get('/results') do
  @results = params.fetch('object').word_frequency(params.fetch('argument'))
  erb(:results)
end
