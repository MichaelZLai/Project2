class ScoresController < ApplicationController
before_action :authenticate_user!

  def new
    @workout = Workout.find(params[:workout_id])
    @score = Score.new(:order => 'created_at DESC')
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @score = @workout.scores.create!(score_params.merge(user: current_user))
    @workout_time = []

    redirect_to workout_path(@workout)
  end

  def edit
    @workout = Workout.find(params[:workout_id])
    @score = Score.find(params[:id])
    authorize! :update, @score
  end

  def update
    @workout = Workout.find(params[:workout_id])
    @score = Score.find(params[:id])
    @score.update(score_params)
    authorize! :update, @score

    redirect_to workout_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @score = @workout.scores.find(params[:id])
      if @score.user == current_user
        @score.destroy
      else
        flash[:alert] = "Only the author of the post can delete"
      end

    redirect_to workout_scores_path(@workout)
  end

  private
  def score_params
    params.require(:score).permit(:workout_time,:workout_score,:notes)
  end

end
