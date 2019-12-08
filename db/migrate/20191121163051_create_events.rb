class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.boolean :pop_up, null: false
      t.datetime :date, null:false
      t.string :position, null:false
      t.string :picture, null: false
    end
  end
end



