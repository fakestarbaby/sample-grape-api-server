Rails.application.routes.draw do
  root 'pages#index'

  mount API::Root => '/'
end
