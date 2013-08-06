ProfileReview::Application.routes.draw do

  root to: "profiles#index"

  resources :profiles

end
