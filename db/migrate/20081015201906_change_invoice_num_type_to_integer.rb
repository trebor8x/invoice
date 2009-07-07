class ChangeInvoiceNumTypeToInteger < ActiveRecord::Migration
  def self.up
	  change_column :invoices, :invoice_num, :integer
  end

  def self.down
	  change_column :invoices, :invoice_num, :string
  end
end
