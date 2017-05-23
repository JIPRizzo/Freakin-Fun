class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

# In order to create user from rails console remember: devise requires that you introduce
# e-mial & passwoord (6 characters).
