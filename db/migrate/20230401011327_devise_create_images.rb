class DeviseCreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :body
      t.timestamps null: false
    end
  end
end
