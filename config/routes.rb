Rails.application.routes.draw do
  # resources :subscriptions
  	resources :subscriptions 
  	# resources :dashboards, :only => [:index]
  	get 'dashboard', :to => 'dashboards#index', :as => 'dashboards'
	get 'dashboard/view', :to => 'dashboards#monthly_revenue', :as => 'dashboard'
	root 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
