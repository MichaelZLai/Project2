class ScoresController < ApplicationController
  before_action :authenticate_user!
  # NHO: can you see a line this is repetitive in this controller?
  # We can help DRY up this controller by using before_action methods to do common tasks such as
  # find a workout
  def new
    @workout = Workout.find(params[:workout_id])
    @score = Score.new
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @score = @workout.scores.create!(score_params.merge(user: current_user))
    @workout_time = [] # NHO: is this line being used anywhere?

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
    authorize! :update, @score # NHO: probably want this line before the update happens...

    redirect_to workout_path(@workout)
  end

  def destroy
    @workout = Workout.find(params[:workout_id])
    @score = @workout.scores.find(params[:id])
      # NHO: great opportunity to take advantage of cancancan's authorize! method
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
