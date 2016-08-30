Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  	root :to => 'students#index'
	get 'signup'  => 'users#new' 
	resources :users
	get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
	get 'students/' => 'students#index'
	get 'students/:id'=> 'students#show', as: :student
	post 'comments/' => 'comments#create'
	delete 'comment/:id' => 'students#destroy'
	get 'students/edit' => 'students#edit'
	
	resources :students do  
		resources :comments
	end  
	resources :comments do
		resources :students
	end
end
