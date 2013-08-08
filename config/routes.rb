ProfileReview::Application.routes.draw do

  root to: "profiles#index"

  resources :profiles do
    resources :comments, only: [:new, :create]
  end

  get '/get_one_to_rate', to: 'profiles#get_one_to_rate'

end
