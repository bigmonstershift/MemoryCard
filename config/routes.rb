Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	namespace :api, {format: 'json'} do
		namespace :v1 do
			resources :rankings, only: [:index, :create]
		end
	end

  root to: 'home#index'
end
