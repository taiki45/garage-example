class UsersController < ApplicationController
  validates :index do
    integer :page
    integer :per_page
  end

  validates :update do
    string :name, required: true
  end

  include Garage::RestfulActions

  def require_resources
    @resources = User.all
  end

  def require_resource
    @resource = User.find(params[:id])
  end

  def update_resource
    @resource.update_attributes!(user_params)
  end

  def user_params
    params.permit(:name)
  end

  def respond_with_resources_options
    { paginate: true }
  end
end
