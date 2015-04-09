class ProfileController < ApplicationController
  def index
  end

  def new

  end

  def show

  end

  def edit
    @profile = Profile.find_by(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
