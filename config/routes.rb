Cmonvoinsin::Application.routes.draw do
  get "perso/pretty"

  # To get the old site, uncomment root to projects/pretty
  #root :to => "projects#pretty"
  root :to => "perso#pretty"
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :images

  resources :projects do
    resources :images
  end

end
