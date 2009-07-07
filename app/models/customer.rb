class Customer < ActiveRecord::Base

	has_many :invoices
	validates_presence_of :customer_num
	validates_numericality_of :customer_num
	validates_uniqueness_of :customer_num

	named_scope :ordered, :order => 'customer_num'

	def self.options_for_select
		find(:all).collect do |custom|
			[custom.formatted_for_option, custom.id]
		end
	end
	
	def formatted_for_option
		"#{company_name}: #{customer_num}"
	end

	def full_name
		"#{contact_prename} #{contact_surname}"
	end
end
