class CreateCustomer < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      
      t.timestamps
    end
  end
end
