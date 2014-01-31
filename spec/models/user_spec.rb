require 'spec_helper'

describe User do
	describe "validations" do
		it {should belong_to :admin}
		it {should have_many :measurements}
	end

	describe "authentication from omniauth" do
		it "should authenticate true" do
			user = create(:user)
			expect(User.from_omniauth(user)).to be_true
		end
	end

	describe "adding a professional to user" do
		it "should be able to add a professional" do
			user = create(:user)
			admin = create(:admin)
			user.admin_id = admin.id
			expect(user.admin_id).to eq(admin.id)
		end
	end
end