Rails.application.routes.draw do
  

  
  

  

  

  #syntax is route: pages is the controller
  #and index is the page
  root to: 'pages#index'
  resources :articles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # get 'sessions/new'
  #get '/south', to: 'pages#south', as: :south
  #get '/north', to: 'pages#north', as: :north
  #get /south means localhost/south for the request
  #this information is sent to the pages
  #controller and then to the south view or page
  get '/south', to: 'south#index', as: :south
  get '/north', to: 'north#index', as: :north
  get '/secret', to: 'pages#secret', as: :secret
  devise_for :users


  

  get '/old', to: 'pages#old', as: :old
  #if I now want to create a new html page
  #say in articles called north.html.erb
  #the controller is called article. So the
  # url would be /north. the controller is 
  #article. so to connect from a link on 
  #site from north would be this
  # get '/north', to: 'article#north', as: :north
  #first step: create north.html.erb under
  #articles folder. then this view will be
  #under the control of the article controller.
  #now set the routes for this view.
  #url is going to be /north
  #get '/north', to: 'articles#north', as: :north
  #get '/south', to: 'articles#south', as: :south
  #get 'north', to: 'north#north', as: :north
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
