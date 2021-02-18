Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails

  # resources :cocktails do
  #   member do
  #     get :doses
  #   end
  # end
end
