class Api::PagesController < ApplicationController
  def query_action
    p "*" * 88
    @name = params[:nayme]
    @the_job = params[:job]
    p "*" * 88
    render 'query_view.json.jbuilder'
  end
end
