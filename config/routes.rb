Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



    resources :stories
    get '/stories', to: 'stories#index'
    get '/topStories', to: 'stories#topStories'
    get '/channels', to: 'stories#channels'
    get '/channels/:channel', to: 'stories#channel_stories'
    post'/stories_search', to: 'stories#stories_search'
    get '/searches', to: 'search#last_ten'
    post '/searches/:id', to: 'search#update'



end
