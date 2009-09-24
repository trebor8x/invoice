Feature: Show the sum of all invoices
  As a client
  I want to see the sum of all invoices per year

Scenario Outline: show sum
  Given a invoice list consisting of invoice <amounts>
  And I am logged in
  When I go to invoice list
  Then I should see the sum <sum>
  
  Scenarios: one invoice
  | amounts   | sum   |
  | 1         | 1,00 €      |
  | 512       | 512,00 €    |
  Scenarios: two invoices
  | amounts   | sum         |
  | 1 4       | 5,00 €      |
  | 5 8       | 13,00 €     |
  | 512 1024  | 1.536,00 €  |
  Scenarios: three invoices
  | amounts   | sum         |
  | 75 3012 8 | 3.095,00 €  |
  | 11 90     | 101,00 €    |
  | 25 6 64   | 95,00 €     |
  