class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :customer_num
      t.string :company_name
      t.string :state
      t.string :city
      t.integer :zipcode
      t.string :tel_number
      t.string :email
      t.string :web
      t.string :contact_prename
      t.string :contact_surname

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
