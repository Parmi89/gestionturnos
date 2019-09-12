
Rails.application.routes.draw do
 
  scope module: 'landing' do
  root 'welcome#home'
  get '/:id' => 'welcome#home'
  end
  


  devise_for :user_doctors
  devise_for :users do 
root 'welcome#index'
  resources :welcome
  
  end



  namespace :administration do
  get "/" => redirect("/administration/welcome")
  root "administration#welcome"
  resources :welcome
  resources :patients
  resources :doctors
  resources :appointments
  get  "/pantalla" => "pantalla#pantalla"

  end

  namespace :user_doctor do
  root "home#index"  
  end

end
