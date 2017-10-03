class HomeController < ApplicationController

  def index
    @mobile = mobile_device?
  end
end
