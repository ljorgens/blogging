Rails.application.routes.draw do
 resources :posts
 get '/' => "posts#index"
 get 'posts/new' => "posts#new"
 get 'post' => "posts#show"
end
