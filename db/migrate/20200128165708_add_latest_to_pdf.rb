class AddLatestToPdf < ActiveRecord::Migration[5.2]
  def change
    add_column :pdfs, :latest, :boolean
  end
end
