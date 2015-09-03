class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def index
    @workouts = Workout.paginate(page: params[:page], per_page: 5)
  end

  private

  def workout_params
    params.require(:workout)
      .permit(:title, :focus, :intensity, :weekday)
  end
end
