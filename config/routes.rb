Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show, :update ]
    end
  end
end



end
