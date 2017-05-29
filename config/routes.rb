Rails.application.routes.draw do
  devise_for :usuarios
  resources :peliculas
  resources :comentarios
  
  get 'statics/index'

  get 'statics/about'
  get '/about' => 'static#about', :as => :about
	
  get 'comentarios/index'
  get 'peliculas/index'

  root :to => "statics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
