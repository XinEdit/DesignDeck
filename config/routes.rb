Rails.application.routes.draw do
  devise_for :users

  namespace :account do
    resources :orders do
      post :select_version
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :designer do
    resources :orders do
      post :designer_submit_sample
      resources :stages do
        resources :versions
      end
    end
  end
  #   resources :orders do
  #     post :designer_submit_sample
  #     resources :versions
  #   end
  # end

  root "landing#index"
end
