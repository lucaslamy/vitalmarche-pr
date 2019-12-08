class RemovePictureFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :picture, :string
  end
end
