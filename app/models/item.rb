class Item < ApplicationRecord

  #belongs_to :user
  has_one_attached :image, dependent: :destroy
  has_many :web_confirmations, dependent: :destroy
  has_many :users, through: :web_confirmations, dependent: :destroy
  has_many :local_confirmations, dependent: :destroy
  has_many :users, through: :local_confirmations, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :stock
  
  with_options presence: true do
    validates :image
    validates :name, length: { maximum: 50 }
    validates :text, length: { maximum: 1000 }
    validates :deployment
    validates :arrival_day
  end
  validates :stock_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ""
      Item.where('name LIKE(?) OR arrival_day LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Item.all.order("arrival_day DESC").limit(10)
    end
  end

end

