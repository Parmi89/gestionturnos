
Rails.application.routes.draw do
 
  
  scope module: 'landing' do
  root 'welcome#home'
  end
  


  devise_for :users 
  namespace :administration do
  root "home#index"
  resources :patients
  resources :doctors
  resources :appointments
  resources :advertisings
  get  "/pantalla" => "pantalla#pantalla"

  end
  devise_for :user_doctors
  namespace :user_doctor do
  root "home#index"
  end

end