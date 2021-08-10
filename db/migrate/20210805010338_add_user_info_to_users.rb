class AddUserInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :id_emp, :string
    add_column :users, :campus, :string
    add_column :users, :rol, :string

  end
end
