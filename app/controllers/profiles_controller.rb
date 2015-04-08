class ProfilesController < ApplicationController

  def index
  end

  def show
    @profile = current_user.profile
  end

  def new
    @profile = Profile.new
    # @user = current_user #User.find(params[:id])
    # @profile = @user.build_profile
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    if @profile.save
      redirect_to @profile, notice: "Profile created Successfully"
    else
      redirect_to new_profile_path, notice: "Sorry, the profile did not save"
    end
  end


  def update
  end

  def destroy
  end

  private
    def profile_params
      params.require(:profile).permit(:picture, :bio, :email,
                                      :twitter, :website, :github,
                                      :dribble, :public, :portfolio, :user_id)

    end
end
