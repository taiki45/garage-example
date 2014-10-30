class User < ActiveRecord::Base
  has_many :posts

  include Garage::Representer
  include Garage::Authorizable

  property :id
  property :name
  property :email
  link(:posts) { user_posts_path(self) }

  def self.build_permissions(perms, other, target)
    perms.permits! :read
  end

  def build_permissions(perms, other)
    perms.permits! :read
    perms.permits! :write if self == other
  end
end
