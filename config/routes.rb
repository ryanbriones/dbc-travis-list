TravisList::Application.routes.draw do
  resources :categories do
    resources :posts
  end
  
  root to: "categories#index"
end
