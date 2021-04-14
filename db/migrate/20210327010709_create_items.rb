class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string      :name,            null: false
      t.text        :text,            null: false
      t.integer     :stock_id,        null: false
      t.string      :storage_location
      t.string      :deployment,      null: false
      t.string      :arrival_day,     null: false
      t.timestamps
    end
  end
end
