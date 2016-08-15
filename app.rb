require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
    #this method sends data to the post '/reverse' route
  end

  post '/reverse' do  #two different pages are rendered here
    #This method gets data from the get '/reverse' method
    original_string= params["string"]
    @reversed_string= original_string.reverse #this instance variable is now visible to the entire class
    erb :reversed                             #including our view
  end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
