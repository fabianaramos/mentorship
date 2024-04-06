class MenteesController < ApplicationController
  def index
    @mentees = Mentee.all
  end

  def show
    @mentee = Mentee.find(params[:id])
  end

  def new
    p current_user
    @mentee = Mentee.new
  end

  def create
    p mentee_params
    @mentee = Mentee.new(mentee_params)

    if @mentee.save
      redirect_to @mentee
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private
  def mentee_params
    params.require(:mentee).permit(:bio).merge(user_id: current_user.id)
  end
end
