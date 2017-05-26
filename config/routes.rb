Rails.application.routes.draw do
  

  devise_for :users

  get 'statics/index'

  get 'statics/about'

	resources :peliculas
	resources :comentarios
  
  get 'comentarios/index'
  get 'peliculas/index'
  get '/about' => 'static#about', :as => :about

  root :to => "statics#index"
   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
