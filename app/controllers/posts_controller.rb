class PostsController < ApplicationController
  include Garage::RestfulActions

  def require_resources
    @resources = Post.all
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
