class CreateCoords < ActiveRecord::Migration[6.1]
  def change
    create_table :coords do |t|
      t.string :name
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
