Given /^a invoice list consisting of invoice ([\d ]+)$/ do |amounts|
  customer = Customer.create(:customer_num => 1, :company_name => "dummy")
  amounts.split(" ").each_with_index do |amount, i|
    Invoice.create(:customer => customer, :invoice_num => i, :sum => amount, :date => Time.now)
  end
end

Then /^I should see the sum ([\d ,\.€]+)$/ do |sum|
  response.should contain(sum)
end