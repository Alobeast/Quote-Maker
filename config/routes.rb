Rails.application.routes.draw do
  root to: "pages#home"
  Rails.application.routes.draw do
    devise_for :users
    resources :quotes
  end
end
