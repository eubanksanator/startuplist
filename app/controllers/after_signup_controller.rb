class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :create_profile

  def show
    @user = current_user
  end
end
