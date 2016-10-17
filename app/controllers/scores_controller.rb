class ScoresController < ApplicationController
  def index
  end
  def show
  end

  def new
    @workout = Workout.find(params[:workout_id])
    @score = Score.new
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @score = @workout.scores.create!(score_params)

    redirect_to workout_path(@workout)
  end

  def edit
    @workout = Workout.find(params[:workout_id])
    @score = Score.find(params[:id])
  end

  def update
    @workout = Workout.find(params[:workout_id])
    @score = Score.find(params[:id])
    @score.update(workout_params)

    redirect_to workout_scores_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @score = @workout.scores.find(params[:id])
    @score.destroy

    redirect_to workout_scores_path(@workout)
  end

  private
  def score_params
    params.require(:score).permit(:workout_time)
  end

end
