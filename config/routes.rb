Rails.application.routes.draw do
  resources :subsidiaries
  resources :feedbacks

  root 'application#hello'
  
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_template/template'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
