class PagesController < ApplicationController

def welcome
 @header = "This is the welcome page"
end

def contest
@header = "WIN WIN WIN WIN ...maybe lose"
end

def kitten

requested_size = params[:size]
@kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

end

end
