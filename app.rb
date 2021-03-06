require 'sinatra/base'
require 'sinatra/reloader' 
require_relative './lib/player.rb'

  class Battle < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
  end

  enable :sessions


  get "/" do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    
    redirect "/play"
  end 

  get "/play" do
    @player_one = $player_one
    @player_two = $player_two
    erb :play

  end

  get '/attack' do 
    @player_one = $player_one
    @player_two = $player_two
    @player_one.attack(@player_two)
    erb:attack
  end 

end