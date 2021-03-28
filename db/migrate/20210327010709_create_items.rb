class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string      :name,            null: false
      t.text        :text,            null: false
      t.references  :user,            foreign_key: true
      t.integer     :stock_id,        null: false
      t.string      :storage_location
      t.string      :deployment,      null: false
      t.date        :arrival_day,     null: false
      t.timestamps
    end
  end
end
