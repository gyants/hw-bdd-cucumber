Rottenpotatoes::Application.routes.draw do
  devise_for :moviegoers, controllers: {
    omniauth_callbacks: 'moviegoers/omniauth_callbacks',
    sessions: 'moviegoers/sessions',
    registrations: 'moviegoers/registrations'
  }
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
