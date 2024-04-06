class MentorsController < ApplicationController
  before_action :set_mentors, only: %i[ edit update ]

  # GET /mentors or /mentors.json
  def index
    @mentors = Mentor.all
  end

  # GET /mentors/1 or /mentors/1.json
#   def show
#   end

  # GET /mentors/new
  def new
    @mentor = current_user.build_mentor
  end

  # GET /mentors/1/edit
  def edit
  end

  # POST /mentors or /mentors.json
  def create
    @mentor = current_user.build_mentor(mentors_params)

    respond_to do |format|
      if @mentor.save
        format.html { redirect_to mentors_url(@mentor), notice: "Mentor was successfully created." }
        format.json { render :show, status: :created, location: @mentor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentors/1 or /mentors/1.json
  def update
    respond_to do |format|
      if @mentor.update(mentors_params)
        format.html { redirect_to mentors_url(@mentor), notice: "Mentor was successfully updated." }
        format.json { render :show, status: :ok, location: @mentor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

#   # DELETE /mentors/1 or /mentors/1.json
#   def destroy
#     @mentor.destroy!

#     respond_to do |format|
#       format.html { redirect_to mentors_url, notice: "Mentor was successfully destroyed." }
#       format.json { head :no_content }
#     end
#   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentors
      @mentor = Mentor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mentors_params
      params.require(:mentor).permit(:bio, :url)
    end
end
