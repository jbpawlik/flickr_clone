class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :albums

  # rails_admin do
  #   configure :user do
  #     label 'Owner of this ball: '
  #   end
  # end
end
