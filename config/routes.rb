Rails.application.routes.draw do
	resources :contacts
	resources :user
root 'navigate#index'

get 'about' => 'pages#about'

get 'home' => 'navigate#index'

get 'gallery' => 'gallery#gallery'

get 'contact' => 'contacts#new'

get 'delete' => "contacts#delete"

get 'search' => "contacts#search"

get 'Register' => "user#new"

get 'Login' => "user#login"

post '/sessions' => 'sessions#create'
match 'Login' => 'user#login', via: [:get, :post]


get 'Destroy' => 'navigate#destroy'
end
