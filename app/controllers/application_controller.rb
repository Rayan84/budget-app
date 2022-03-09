class ApplicationController < ActionController::Base

  def after_sign_up(resource)
    redirect '/users/edit'
  end
end
