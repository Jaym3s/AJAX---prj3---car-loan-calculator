class CarsController < ApplicationController

  before_filter :find_car

  CARS_PER_PAGE = 20

  def create
    car_hash = params[:car]
    @make = Make.find_by_name(car_hash.fetch('make')) || Make.create(:name => car_hash.fetch('make'))
    @model = Model.find_by_name(car_hash.fetch('model')) || Model.create(:name => car_hash.fetch('model'), :make => @make)
    @car = Car.new(:model => @model, :name => car_hash.fetch('name'), :price => car_hash.fetch('price'))
    respond_to do |format|
      if @car.save
        flash[:notice] = 'Car was successfully created.'
        format.html { redirect_to @car }
        format.xml  { render :xml => @car, :status => :created, :location => @car }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @car.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @car.destroy
        flash[:notice] = 'Car was successfully destroyed.'
        format.html { redirect_to cars_path }
        format.xml  { head :ok }
      else
        flash[:error] = 'Car could not be destroyed.'
        format.html { redirect_to @car }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def index

    @json_cars = Car.find_all_by_model_id(params[:model_id]) unless params[:model_id].nil?
    @json_cars = Car.find(params[:trim_id]) unless params[:trim_id].nil?

    @cars = Car.paginate(:page => params[:page], :per_page => CARS_PER_PAGE)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @cars }
      format.json {render :layout => false, :json => @json_cars}
    end
  end

  def edit
  end

  def new
    @car = Car.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @car }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @car }
    end
  end

  def update
    respond_to do |format|
      if @car.update_attributes(params[:car])
        flash[:notice] = 'Car was successfully updated.'
        format.html { redirect_to @car }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @car.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def find_car
    @car = Car.find(params[:id]) if params[:id]
  end

end