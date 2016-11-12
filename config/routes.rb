Rails.application.routes.draw do
  devise_for :users
  namespace :account do
    resources :orders
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :designer do
    resources :orders do
      resources :versions do
        collection do
          post :create_samples
        end
      end
    end
  end

  root "landing#index"
end
