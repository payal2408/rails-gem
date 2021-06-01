Rails.application.routes.draw do
  
 
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }
 
 
  root "home#index"
  resources :books
  resources :demos  
  delete 'demos/:id/delete' => 'demos#destroy', as: 'demos_delete'
  get '/demos/:id/delete' => 'demos#destroy'
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
