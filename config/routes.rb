Rails.application.routes.draw do

  

  ##### DASHBOARD ######
  get "dashboard", to:'dashboard#index'
  get "dashboard-setup", to:"dashboard#home"
  get "dashboard-membres", to:"dashboard#members"
  get "dashboard-articles", to:"dashboard#articles"
  get "dashboard-campagnes", to:"dashboard#campagnes"
  get "dashboard-projets", to:"dashboard#projets"
  get "dashboard-adhesions", to:"dashboard#bememberships"
  get "dashboard-benevols", to:"dashboard#benevols"

  ##### USER ######
   devise_scope :user do
    get 'action-plus-sign-up-member', to:'bememberships#users' #Member's Account
    get 'action-plus-sign-in', to: 'devise/sessions#new'
    get 'action-plus-sign-up', to: 'devise/registrations#new', as: "new_user_registration"
    get 'profile/edit'    => 'devise/registrations#edit'
    get 'profile/cancel'  => 'devise/registrations#cancel'
    delete 'sign-out', to: 'devise/sessions#destroy'
  end

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
