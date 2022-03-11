class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        # def after_sign_up
        #   redirect_to '/categories'
        # end
        
        # def after_sign_in_path_for(resource)
        #   users_edit_path
        # end

end
