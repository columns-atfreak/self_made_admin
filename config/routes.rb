Rails.application.routes.draw do
  devise_for :authors

  namespace :admin do
    resource :categories
    resource :users
    resource :columns
  end
end
