Rails.application.routes.draw do
  resources :vendas
  resources :produtos
  resources :clientes
  resources :usuario_perfils
  resources :perfils
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
