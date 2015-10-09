class User < ActiveRecord::Base
  has_many :artists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
