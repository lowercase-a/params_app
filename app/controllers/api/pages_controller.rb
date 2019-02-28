class Api::PagesController < ApplicationController
  def query_action
    render 'query_view.json.jbuilder'
  end
end
