require 'spec_helper'


describe "login process" do
	it "is not successful" do
		visit 'login'
		fill_in( 'email', :with => 'joe@example.com')
		fill_in( 'password', :with => 'asd')
		click_button( 'Log In' )
		page.should have_content('invalid')
	end

	it "is successful" do
		admin = create(:admin)
		visit "login"
		fill_in 'email', :with => admin.email
		fill_in 'password', :with => 'asd123'
		click_button 'Log In'
		page.should have_content('Welcome')
	end

end