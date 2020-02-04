Rails.application.routes.draw do
	
  resources :qualifications
  resources :educations
  resources :activities
  resources :abouts
  devise_for :users
  root 'abouts#index'

 	devise_scope :user do
	    get '/users', to: 'devise/registrations#new'
	    get '/users/password', to: 'devise/passwords#new'
  	end

end
