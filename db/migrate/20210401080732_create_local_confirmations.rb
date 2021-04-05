class CreateLocalConfirmations < ActiveRecord::Migration[6.0]
  def change
    create_table :local_confirmations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
