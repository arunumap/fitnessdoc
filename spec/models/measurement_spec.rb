require 'spec_helper'

describe Measurement do
	describe "obtain fitbit data" do
		
		it "has oauth tokens" do
			measurement = create(:measurement)
			user = create(:user)
			expect(measurement.oauth_token(user)).to eq(user.oauth_token)
		end

		it "has oauth secret" do
			measurement = create(:measurement)
			user = create(:user)
			expect(measurement.oauth_secret(user)).to eq(user.oauth_secret)
		end

		it "has a provider" do
			measurement = create(:measurement)
			user = create(:user)
			expect(measurement.provider(user)).to eq(user.provider)
		end	

	end
end