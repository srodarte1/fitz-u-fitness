class RoutinesController < ApplicationController
  before_action :set_routine, only: %i[ show update destroy ]
 #LETS ALLOW TO DELETE ROUTINES. ALSO NEED INDEX AND SHOW. BUT HOW ARE WE GOING TO ADD MULTIPLE EXERCISES TO ROUTINES? LIKE EACH ROUTINE IN THE DB CAN ONLY HAVE ONE EXERCISE ID.

 # ==> WHY DO I FEEL LIKE I NEEDED ANOTHER TABLE? LIKE ROUTINES AND EXERCISES NEEDED TO BE RELATED THROUGH A DIFFERENT TABLE. AND USERS AND ROUTINES HAVE A DIRECT RELATIONSHIP, ONE TO MANY. ONE USER CAN HAVE MANY ROUTINES. ROUTINES HAS MANY EXERCISES THROUGH....UGH I CAN'T THINK OF IT. DAILY_ROUTINE? 

  # GET /routines
  def index
   render json: Routine.all, status: :ok
  end

  # GET /routines/1
  def show
    render json: @routine, status: :ok
  end

  # POST /routines
  def create
    render json: Routine.create!(routine_params), status: :created
  end

  # PATCH/PUT /routines/1
  def update
    @routine.update!(routine_params)
    render json: @routine, status: :accepted
  end

  # DELETE /routines/1
  def destroy
    @routine.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_routine
      @routine = Routine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def routine_params
      params.permit(:name, :rest, :sets, :exercise_id, :user_id)
    end
end
