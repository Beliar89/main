Rails.application.routes.draw do
  devise_for :usuarios
  get 'statics/index'

  get 'statics/about'

	resources :peliculas
	resources :comentarios
  
  get 'comentarios/index'
  get 'peliculas/index'

  root :to => "statics#index"

  get '/about' => 'static#about', :as => :about


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
