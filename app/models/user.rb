class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :store_name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
         has_many :meats
        #  has_many :selling_prices
end
