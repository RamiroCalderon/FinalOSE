class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :school, null: false, foreign_key: true
      t.references :coord, null: false, foreign_key: true
      t.references :drop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
