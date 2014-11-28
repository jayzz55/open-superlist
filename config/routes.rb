Open_Superlist::Application.routes.draw do

  devise_for :users
  
  resources :todos, only: [:create, :destroy, :index] do
    collection do
        delete 'destroy_multiple'
      end
  end


  namespace :api do
    resources :users
    resources :todos
  end


  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
