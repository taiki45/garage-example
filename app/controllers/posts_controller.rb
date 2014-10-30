class PostsController < ApplicationController
  validates :create do
    string :title, required: true
    string :body
  end

  validates :update do
    string :title
    string :body
    string :published_at
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
    @resources.create(post_params)
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
end
