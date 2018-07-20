require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

    get '/' do
     return erb :home
    end
    
    
    get '/interact1' do
     return erb :interactive1
    end
 

	get '/about' do
	 return erb :about
	end


	get '/interact' do
	   return erb :interactive1
	end 
	
	
	get '/interact2' do
	   return erb :interactive2
	end 
	
	
	get '/inspire' do
        return	erb :testimonials 
	end
  
  
    get '/help' do
        return  erb :links
    end
    
    
    get '/right' do
        return erb :right1
    end
  
  
    get '/wrong' do
        return erb :wrong1
    end
    
    
    get '/right2' do
        return erb :right2
    end
    
    
    get '/wrong2' do
        return erb :wrong2
    end
    
    get '/game' do
        return erb :game
    end
  
  
    post '/where' do
    	if params[:answer] == "Hello World!"
	  	    erb :right1
        else
	    	erb :wrong1
	    end
	end
  
    
    post '/where2' do
    	if ( params[:def] == "def" && params[:gets] == "gets.strip" && params[:gets2] == "gets.strip"  && params[:end] == "end" && params[:joke] == "joke")
	  	    erb :right2
        else
	    	erb :wrong2
	    end
	end
	
    post '/games' do
        if(params[:game].to_s.to_i%15==0)
            erb  :fizzbuzz
        elsif(params[:game].to_s.to_i%3==0)
            erb :fizz
        elsif(params[:game].to_s.to_i%5==0)
            erb :buzz
        else 
            erb :none
        end
    end
    
end 
