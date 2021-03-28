class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image
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
end

