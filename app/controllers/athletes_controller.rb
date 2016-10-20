class AthletesController < ApplicationController
before_action :authenticate_user!

  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def create
    @athlete = Athlete.create!(athlete_params.merge(user: current_user))

    redirect_to workouts_path
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def update
    @athlete = Athlete.find(params[:id])
    @athlete.update!(athlete_params)

    redirect_to athlete_path(@athlete)
  end

  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy

    redirect_to workouts_path
  end

  private
  def athlete_params
    params.require(:athlete).permit(:age, :height, :weight, :img_url, :gender,:name,:user_id,:clean_jerk,:snatch,:deadlift,:back_squat,:bench, user_attributes:[:name, :email, :admin, :id])
  end

end
