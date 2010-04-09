class MakesController < ApplicationController
  resource_controller
  index.wants.json {render :json => Make.all}
end
