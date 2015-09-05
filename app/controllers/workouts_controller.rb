class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.paginate(page: params[:page], per_page: 5)
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout, notice: 'Workout was successfully created.'
    else
      render 'new'
    end
  end

  private

  def workout_params
    params.require(:workout)
      .permit(:intensity, :weekday, :workout_log)
  end
end
