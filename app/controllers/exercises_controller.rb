class ExercisesController < ApplicationController
  before_action :set_exercise, only: [ :update, :destroy ]

  # GET /exercises
  def index
    @exercises = Exercise.all

    render json: @exercises, status: :ok
  end

  # GET /exercises/1
  def show
    render json: @exercise, status: :ok
  end

  def create 
    render json: Exercise.create!(exercise_params), status: :created
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    def exercise_params
      params.permit(:name, :category, :tempo)
    end

    
    
end
