Borrow::Application.routes.draw do
  root :to => "pages#home"
  get "about" => "pages#about"
  get "how_it_works" => "pages#how_it_works"
  get "sign_up" => "pages#sign_up"
  get "sign_in" => "pages#sign_in"
  resources :user
end
