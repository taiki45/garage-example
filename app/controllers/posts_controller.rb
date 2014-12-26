class PostsController < ApplicationController
  validates :index do
    integer :page, description: 'Parameter for pagination'
    integer :per_page, description: 'Parameter for pagination'
  end

  validates :create do
    string :title, required: true, description: 'You can not specify title as emtpry string.'
    string :body, description: "Blog contents. Emtpry string is allowed."
  end

  validates :update do
    string :title, description: 'You can not specify title as emtpry string.'
    string :body, description: "Blog contents. Emtpry string is allowed."
    string :published_at, description: 'If you specify this parameter, we publish the blog with current time. The parameter value is ignored. '
  end

  include Garage::RestfulActions

  def require_resources
    if params[:user_id]
      @resources = User.find(params[:user_id]).posts
    else
      @resources = Post.all
    end
  end

  def create_resource
    @resources.create(post_params.merge(user_id: resource_owner_id))
  end

  def require_resource
    @resource = Post.find(params[:id])
  end

  def update_resource
    @resource.update_attributes!(post_params)
  end

  def destroy_resource
    @resource.destroy!
  end

  def post_params
    params.permit(:title, :body, :published_at)
  end

  def respond_with_resources_options
    { paginate: true }
  end
end
