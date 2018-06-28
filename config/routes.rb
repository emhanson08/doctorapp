Rails.application.routes.draw do
	root "static_pages#index"
	
  resources :doctors do
  	collection do
  		get :search
  	end
  end
end
