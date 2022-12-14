class WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    render json: workouts.as_json
  end

  def show
    workout = Workout.find_by(id: params[:id])
    render json: workout.as_json
  end

  def create
    workout = Workout.new
    workout.name = params[:name]
    workout.sets = params[:sets]
    workout.reps = params[:reps]
    workout.save
    render json: workout.as_json
  end

  def update
    workout = Workout.find_by(id: params[:id])
    workout.name = params[:name] || workout.name
    workout.sets = params[:sets] || workout.sets
    workout.reps = params[:reps] || workout.reps
    workout.save
    render json: workout.as_json
  end
  
  def destroy
    workout = Workout.find_by(id: params[:id])
    workout.destroy
    workouts = Workout.all
    render json: workouts.as_json
  end
end
