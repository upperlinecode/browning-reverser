require './config/environment'
require './app/models/phrase'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/reverse' do
    new_word_variable = Phrase.new(params[:sentence])
    @send_to_erb = new_word_variable.reverse_word
    erb :reverse
  end

end
