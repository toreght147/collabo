Rails.application.routes.draw do
  get 'articles' => 'articles#index'
  # get 'posts/new'
  post '/articles' => 'articles#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/' => 'homes#top'
get '/article/new' => 'articles#new'

get '/articles/:id' => 'articles#show', as: 'article'

get '/top' => 'articles#new'

get 'articles' => 'articles#new'

get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'

patch '/articles/:id' => 'articles#update', as: 'update_article'

delete '/articles/:id' => 'articles#destroy', as: 'destroy_article'


end
