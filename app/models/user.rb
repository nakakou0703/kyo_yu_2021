class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, presence: true

  #has_many :items
  has_many :web_confirmations, dependent: :destroy
  has_many :items_by_web, through: :web_confirmations, source: :item, dependent: :destroy
  has_many :local_confirmations, dependent: :destroy
  has_many :items_by_local, through: :local_confirmations, source: :item, dependent: :destroy

end
