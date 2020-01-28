class CreateSlideshow < ActiveRecord::Migration[5.2]
  def change
    create_table :slideshows do |t|
      t.string :title, null: false
      t.string :picture, null: false
    end
  end
end
