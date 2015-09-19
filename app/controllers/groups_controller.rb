class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
  end

  def create
    @lunch = Lunch.find(params[:lunch_id].to_i)
    @group = Group.new(lunch_id: @lunch.id, user_id: current_user.id)
    # @lunch.users << current_user
    # current_user.lunches << @lunch

    if @group.save
      flash[:notice] =  'Lunch joined!'
      redirect_to lunches_path
    else
      flash[:notice] =  'PROBLEM.'
      redirect_to lunches_path
    end
  end

  protected
   def group_params
    params.require(:group).permit(:user_id, :lunch_id)
   end

end
