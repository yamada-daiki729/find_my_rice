class RiceMapPageController < ApplicationController
  def rice_map
    @rices=Rice.all
  end
end
