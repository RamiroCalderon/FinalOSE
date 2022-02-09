class CreateTemporals < ActiveRecord::Migration[6.1]
  def change
    create_table :temporals do |t|
      t.string :clafamilia,
      t.string :NomFamilia,
      t.string :FirstName,
      t.string :LastName,
      t.string :emailaddress,
      t.string :password,
      t.string :Rol,

      t.timestamps
    end
  end
end





