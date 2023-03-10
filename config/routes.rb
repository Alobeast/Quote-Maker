Rails.application.routes.draw do
  root to: "pages#home"

  Rails.application.routes.draw do
    devise_for :users
    resources :quotes
  end

  resources :quotes do
    resources :line_item_dates, except: [:index, :show]
  end
end
