class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, presence: true

  has_many :items
  has_many :web_confirmations
  has_many :items, through: :web_confirmations
  has_many :local_confirmations
  has_many :items, through: :local_confirmations

end
