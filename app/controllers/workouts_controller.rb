class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    authorize! :create, @workout
  end

  def create
    # NHO: probably want to lock down this action
    @workout = Workout.create!(workout_params)
    redirect_to workouts_path
  end

  def edit
    @workout = Workout.find(params[:id])
    authorize! :update, @workout
  end

  def update
    # NHO: probably want to lock down this action
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)

    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def destroy
    # NHO: probably want to lock down this action
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to workouts_path
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :wod, :workout_date)
  end

end
