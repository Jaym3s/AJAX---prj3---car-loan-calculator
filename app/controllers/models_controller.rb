class ModelsController < ApplicationController
  resource_controller
  index.wants.json {render :json => Model.find_all_by_make_id(params[:make_id]) || Model.all}
end
