class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :code
      t.string :sector
      t.string :adress
      t.float :value
      t.string :floor
      t.string :key
      t.string :owner
      t.string :phone
      t.string :mobil
      t.string :state

      t.timestamps
    end
  end
end
