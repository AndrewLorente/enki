class DarkController < ApplicationController
  def dark
    render 'dark', :status => 503
  end

end
