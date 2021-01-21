require_relative './lib/game'
require_relative './lib/player'
require 'sinatra/base'

class Rps < Sinatra::Base
    enable :sessions 
    get '/' do    
        erb :index 
    end

    post '/names' do
        session[:game] = Game.new(params[:player_1], params[:player_2])
        if session[:game].nameone_incorrect? || session[:game].nametwo_incorrect?
        erb :error
        else
        redirect '/play'
        end
    end

    get '/play' do
        @game = session[:game]
        erb :play
    end

    get '/gamer' do
        @game = session[:game]
        erb :gamer
    end

    post '/gamer' do 
        @game = session[:game]
        @game.playerone.choice = params[:choice_1] 
        @game.playertwo.choice = params[:choice_2]
        session[:game] = @game
        redirect '/winner'
    end

    get '/winner' do 
        @game = session[:game]
        if @game.one_incorrect? || @game.two_incorrect?
            erb :error
        elsif @game.draw?
            erb :draw 
        elsif @game.playerone_won?
            @winner = @game.playerone 
            erb :winner 
        elsif @game.playertwo_won?
            @winner = @game.playertwo
            erb :winner
        end
    end

    run! if app_file == $0
end