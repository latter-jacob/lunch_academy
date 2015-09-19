class LunchesController < ApplicationController

  def index
    @lunches = Lunch.where("date_time > current_timestamp - (20 * interval '1 minute')").order(:date_time)
  end

  def new
    @lunch = Lunch.new
  end

  def create
		@lunch = Lunch.new(lunch_params)

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
     params.require(:lunch).permit(:location, :description, :category, :price, :date_time, :name)
   end

end
