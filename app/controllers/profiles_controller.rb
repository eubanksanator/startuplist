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

  private
    def profile_params
      params.require(:profile).permit(:picture, :bio, :email,
                                      :twitter, :website, :github,
                                      :dribble, :public, :portfolio,)

    end
end
