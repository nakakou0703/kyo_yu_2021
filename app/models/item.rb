class Item < ApplicationRecord

  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :stock
  
  with_options presence: true do
    validates :image
    validates :name
    validates :text
    validates :storage_location
    validates :deployment
    validates :arrival_day
  end
  validates :stock_id, numericality: { other_than: 1 }
end

