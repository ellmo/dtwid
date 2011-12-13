Dtwid::Application.routes.draw do

  namespace :admin do resources :gallery_images end

  resources :votes

  resources :submission_comments

  namespace :admin do    
    resources :users, :except => [:create, :destroy]
    resources :map_authors
    resources :news
  end

  resources :submissions do
    collection do
      get "search"
    end
  end

  match 'news' => "frontend#index"
  match 'about' => "frontend#about"
  match 'contact' => "frontend#contact"
  match 'release' => "frontend#release"

  devise_for :users
  
  root :to => "frontend#release"
  
end
