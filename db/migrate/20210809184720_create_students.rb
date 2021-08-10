class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :mat
      t.references :school, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
    end
  end
end
