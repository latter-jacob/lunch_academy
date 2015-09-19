class LunchesController < ApplicationController

  def index
     @lunches = Lunch.where("date > current_timestamp - (20 * interval '1 minute')").order(:time, :date)
  end

  def new
    @lunch = Lunch.new
    @categories = Lunch::CATEGORIES
    @prices = Lunch::PRICES
  end

  def create
		@lunch = Lunch.new(lunch_params )
    @lunch.date = params[:date]
    @lunch.time = params[:time]
		if @lunch.save
			flash[:notice] =  'Lunch Successfully Added!'
			redirect_to @lunch
		else
			flash[:notice] =  'Fill that out.'
			render :new
		end
	end

  def show
    @lunch = Lunch.find(params[:id].to_i)
  end

  protected
   def lunch_params
    params.require(:lunch).permit(:location, :description, :category, :price, :date, :time, :name)
   end

end
