class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_one :pdf, :dependent => :destroy
  has_one :doc, :dependent => :destroy

  validates_presence_of :invoice_num
  validates_numericality_of :invoice_num
  validates_uniqueness_of :invoice_num
  validates_presence_of :customer
  validates_associated :pdf, :if => :pdf
  validates_associated :doc, :if => :doc

  named_scope :ordered, :order => 'invoice_num'

  def self.find_invoices
    find(:all, :order => "invoice_num")
  end

  def self.new_invoice_num
    (Invoice.maximum(:invoice_num) || 0) + 1
  end

end
