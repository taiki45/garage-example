Garage.configure {}
Garage::TokenScope.configure do
  register :public, desc: 'accessing publicly available data' do
    access :read, User
    access :read, Post
    access :write, User
    access :write, Post
  end
end

Doorkeeper.configure do
  orm :active_record
  default_scopes :public
  optional_scopes(*Garage::TokenScope.optional_scopes)

  resource_owner_from_credentials do |routes|
    User.find_by(email: params[:username])
  end
end
