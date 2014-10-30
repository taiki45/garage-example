class User < ActiveRecord::Base
  include Garage::Representer
  include Garage::Authorizable

  property :id
  property :name
  property :email

  def self.build_permissions(perms, other, target)
    perms.permits! :read
  end

  def build_permissions(perms, other)
    perms.permits! :read
    perms.permits! :write
  end
end
