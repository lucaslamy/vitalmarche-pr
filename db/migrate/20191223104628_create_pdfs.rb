class CreatePdfs < ActiveRecord::Migration[5.2]
  def change
    create_table :pdfs do |t|
      t.string :title
      t.string :file
    end
  end
end
