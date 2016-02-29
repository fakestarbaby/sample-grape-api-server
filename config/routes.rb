Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'

  mount API::Root => '/'
  mount GrapeSwaggerRails::Engine => '/docs'
end
