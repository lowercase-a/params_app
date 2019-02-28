class Api::PagesController < ApplicationController
  def query_action
    p "*" * 88
    @name = params[:nayme]
    @the_job = params[:job]
    p "*" * 88
    render 'query_view.json.jbuilder'
  end

  def name_action
    @name = params[:name].upcase
    if @name[0] == 'A'
    # if @name.start_with?('a')
      @message = "Congratulations, your first name begins with A"
    else
      @message = "Sorry, the first letter of your first name doesn't begin with the letter A, but you probably already knew that"
    end
    render 'name_view.json.jbuilder'
  end

  def game_action
    # write all the logic but don't make it flexible
    user_input = params[:guess].to_i
    answer = 32
    if user_input > answer
      @message = "hey you guessed too high"
    elsif user_input < answer
      @message = "hey you guessed too low"
    elsif user_input == answer
      @message = "hey you git it right. brett didn't believe in you, but you did it"
    end
    render 'game.json.jbuilder'
  end

  def segment_action
    @city = params[:apple]
    render 'segment.json.jbuilder'
  end

  def segment_game
    user_input = params[:user_guess].to_i
    answer = 32
    if user_input > answer
      @message = "hey you guessed too high"
    elsif user_input < answer
      @message = "hey you guessed too low"
    elsif user_input == answer
      @message = "hey you git it right. brett didn't believe in you, but you did it"
    end
    render 'segment_game.json.jbuilder'
  end
end
