Rails.application.routes.draw do
	resources :contacts
root 'navigate#index'

get 'about' => 'pages#about'

get 'home' => 'navigate#index'

get 'gallery' => 'gallery#gallery'

get 'contact' => 'contacts#new'

get 'delete' => "contacts#delete"

get 'search' => "contacts#search"
end
