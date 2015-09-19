class LunchesController < ApplicationController

  def index
    @lunch = Lunch.where("date_time > current_timestamp - (20 * interval '1 minute')").order(:date_time)
  end

  def new
    @lunch = Lunch.new
  end

  def create
  end

end
