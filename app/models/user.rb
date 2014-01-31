class User < ActiveRecord::Base
belongs_to :admin
has_many :measurements

  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.full_name
      user.email = "doe@example.com"
      user.oauth_token = auth.credentials.token
      user.oauth_secret = auth.credentials.secret
    end
  end

  def self.link_to_admin(params)
     @user = User.find(params[:id])
    if params[:commit] == "add"
      @user.update_attributes(admin_id: params[:admin])
    else
      @user.update_attributes(admin_id: nil)
    end
  end
end