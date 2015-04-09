class CreateProfilesController <Wicked::WizardController
# before_filter: authenticate_user!

steps :user_profile

def show
  @user = current_user
  render_wizard
end
end
