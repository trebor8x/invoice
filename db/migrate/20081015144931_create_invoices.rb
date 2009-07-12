class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.integer :invoice_num
      t.date    :date
      t.integer :customer_id
      t.decimal :sum, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
