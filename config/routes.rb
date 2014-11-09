Rails.application.routes.draw do
  # make POST request to solve problem of running into a limit of data that can be sent over a GET request
  resources :products do
    # add search routes that takes POST requests and which routes to index action
    collection { post :search, to: 'products#index' }
  end
  root to: 'products#index'
end
