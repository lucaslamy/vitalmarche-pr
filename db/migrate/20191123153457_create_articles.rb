class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.datetime :date, null:false, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :picture, null: false
    end
  end
end
