class UserController < ApplicationController

    def  new 

    end 

    def index
        @users = User.all 
    end 

    def create
        User.create({
            name: params[:name],
            wins: 0,
            losses: 0
        })

        redirect_to '/homepage'
    end 

    def homepage
        @users = User.all
    end 

    def game
        @player1 = User.find_by(name: params[:player_one])
        @player2 = User.find_by(name: params[:player_two])
    end 

    def update 
        @red = params[:red]
        redirect_to '/game'
    end 
end 