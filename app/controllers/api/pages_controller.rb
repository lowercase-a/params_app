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
end
