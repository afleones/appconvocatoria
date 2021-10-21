Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :users
 #  devise_scope :user do
 #   match 'users/sign_out' => "devise/sessions#destroy"
 # end
  # get '*any', via: :all, to: 'application#catch_404'
end
