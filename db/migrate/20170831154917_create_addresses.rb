class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :postalcode
      t.string :housenum
      t.string :landmark

      t.timestamps
    end
  end
end
