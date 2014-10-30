Rails.application.routes.draw do
  use_doorkeeper

  scope :v1 do
    resources :users, only: %i(index show update)
  end
end
