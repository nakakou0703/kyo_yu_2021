class WebConfirmation < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates_uniqueness_of :item_id, scope: :user_id  #ユーザーは一度しか確認ボタンを押せない

end
