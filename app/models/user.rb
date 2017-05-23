class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 validates :first_name, presence: true, uniqueness: true
 validates :last_name, presence: true, uniqueness: true
 validates :email, presence: true, uniqueness: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

# In order to create user from rails console remember: devise requires that you introduce
# e-mial & passwoord (6 characters).
