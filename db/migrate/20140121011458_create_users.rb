class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.belongs_to :admin
    	t.string :name 
    	t.string :email
    	t.string :provider
    	t.string :uid
    	t.string :oauth_token
    	t.string :oauth_secret
    	t.timestamp
    end
  end
end
