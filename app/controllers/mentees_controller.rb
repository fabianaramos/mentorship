class MenteesController < ApplicationController
  def index
    @mentees = Mentee.all
  end

  def shows(id)
    @mentees = Mentee.find(id)
  end

  def new
    
  end

  def create
  end

  def edit
  end

  def update
  end
end
