Given /^I am logged in$/ do  
  current_user = User.create(
    :login => 'testuser',
    :email => 'test@user.com',
    :password => '123456',
    :password_confirmation => '123456')
  current_user.activate!
  

  visit login_url
  fill_in("login", :with => "testuser")
  fill_in("password", :with => "123456")
  click_button("Anmelden")
  response.body.should =~ /Erfolgreich angemeldet./m
end

