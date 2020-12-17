class Users::OmniauthController < ApplicationController

def google_oauth2
  @user=User.create_from_provider_data(request.env['omniauth.auth'])
  if @user.persisted?
    sign_in_and_redirect @user
    puts "User Created Via Oauth"
  else
    flash[:error] = 'There was an issue signing you in. Please try again.'
    redirect_to new_user_registration_url
  end
end

def failure
  flash[:error] = 'There was an issue signing you in. Please try again.'
end
  
end