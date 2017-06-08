class PagesController < ApplicationController

before_action :set_kitten_url , only: [:kitten, :kittens]

def welcome
 @header = "This is the welcome page"
end

def contest
flash[:notice] = "Sorry ... Contest is Now Closed"
redirect_to "/welcome"
end

def kitten
end

def kittens
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

end

def secrets

  if params[:magic_word] == "abracadabra"
  else
    flash[:alert] = "ACCESS DENIED"
    redirect_to :welcome
  end
end

end
