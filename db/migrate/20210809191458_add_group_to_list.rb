class AddGroupToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :group_id, :string
  end
end
