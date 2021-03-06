class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|

      t.string :name
      t.string :postal_code
      t.string :address
      t.references :customer, foreign_key: true, :null => false

      t.timestamps
    end
  end
end
