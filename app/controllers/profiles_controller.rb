class ProfilesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @profile = Profile.create(profile_params)
  end


  def update
  end

  def destroy
  end
end
