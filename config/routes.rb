Aimzatron::Application.routes.draw do
  root :to => 'base#index'
  get '/contact', to: 'base#contact'



end
