class SearchController < ApplicationController
  def index
  end

  def theTime
    render :text => "<p>The time is <b>" + DateTime.now.to_s + "</b></p>"
  end
end
