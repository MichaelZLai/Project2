class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create!(workout_params)
    puts(params)

    redirect_to workouts_path
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)

    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find(params[:id])
    @score = Score.all
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to workouts_path
  end

  private
  def workout_params
    params.require(:workout).permit(:name, :wod, :workout_date)
  end

end
