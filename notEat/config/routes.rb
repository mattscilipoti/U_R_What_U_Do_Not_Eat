Rails.application.routes.draw do
  devise_for :users

  root to: 'welcome#index'

  # mms: nice. I really like this new syntax for authentication. 
  authenticate :user do
    resources  :reasons, only: [:new, :create, :edit, :update, :destroy]
    resources  :restrictions, only: [:new, :create, :edit, :update, :destroy]
    resources  :posts, only: [:new, :create, :edit, :update, :destroy]
    resources  :profiles, only: [:new, :create, :edit, :update, :destroy]
  end

  resources    :reasons, only: [:index, :show]
  resources    :restrictions, only: [:index, :show]
  resources    :posts, only: [:index, :show]
  resources    :profiles, only: [:index, :show]

  resources    :foods, :periods
end
