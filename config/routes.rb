Rails.application.routes.draw do
  # we modified devise, so we have to specify which controller it needs to use
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  # using the devise gem, change the login route to just /login
  devise_scope :user do 
    get 'login', to:'devise/sessions#new'
  end

  devise_scope :user do 
    get 'signup', to: 'devise/registrations#new'
  end

end
