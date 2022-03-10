class ApplicationController < ActionController::Base
  def after_sign_up(_resource)
    redirect '/users/edit'
  end
end
