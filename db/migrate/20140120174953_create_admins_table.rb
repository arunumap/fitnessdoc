class CreateAdminsTable < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :name, null: false
    	t.string :email, null: false
    	t.string :password_digest
    	t.timestamp
    end
  end
end
