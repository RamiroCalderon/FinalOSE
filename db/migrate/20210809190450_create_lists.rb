class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :mat
      t.string :school
      t.string :group
      t.string :drop
      t.string :arrive
      t.string :pick
      t.integer :show
    end
  end
end
