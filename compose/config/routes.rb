Rails.application.routes.draw do
  resources :teachers
  resources :subjects
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :students
	resources :students
	#root 'students#index'
	root 'pages#info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
