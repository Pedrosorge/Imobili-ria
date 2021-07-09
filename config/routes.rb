Rails.application.routes.draw do
  
  resources :casa_alugars
  root 'menu#_01index'

  get '/_buy', to:'menu#_buy'

  get '/_buy/casa', to:'menu#_apertou'

  get '/_help', to:'menu#_help'

  get '/_criar_buy', to:'casas#index'

  get '/new_buy', to:'casas#new'

  get '/new_hent', to:'casa_alugars#new'

  get '/_hent', to:'aluguel#index'

  get '/_criar', to:'menu#_intermedio'

  

  resources :casas



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
