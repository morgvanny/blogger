Rails.application.routes.draw do
  scope :api do
    resources :posts, except: [:new, :edit]
    resources :users, except: [:new, :edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
