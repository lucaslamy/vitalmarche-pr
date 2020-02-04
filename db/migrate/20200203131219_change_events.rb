class ChangeEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :pop_up, :boolean
    remove_column :events, :position, :string
    add_column :events, :start_date, :datetime
    add_column :events, :end_date, :datetime
  end
end
