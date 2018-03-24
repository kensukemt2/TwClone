Rails.application.routes.draw do
  root to: 'tw_clones#index'
  resources :tw_clones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
