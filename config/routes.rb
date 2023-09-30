Rottenpotatoes::Application.routes.draw do
  devise_for :moviegoers, controllers: {
    omniauth_callbacks: 'moviegoers/omniauth_callbacks',
    sessions: 'moviegoers/sessions',
    registrations: 'moviegoers/registrations'
  }
  
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
  get '/movies/select', to: 'movies#select_movie', as: 'select_movie'

  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  
end
