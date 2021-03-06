# == Route Map
#
#         Prefix Verb   URI Pattern                                                                                       Controller#Action
#       comments GET    /comments(.:format)                                                                               comments#index
#                POST   /comments(.:format)                                                                               comments#create
#    new_comment GET    /comments/new(.:format)                                                                           comments#new
#   edit_comment GET    /comments/:id/edit(.:format)                                                                      comments#edit
#        comment GET    /comments/:id(.:format)                                                                           comments#show
#                PATCH  /comments/:id(.:format)                                                                           comments#update
#                PUT    /comments/:id(.:format)                                                                           comments#update
#                DELETE /comments/:id(.:format)                                                                           comments#destroy
#          posts GET    /posts(.:format)                                                                                  posts#index
#                POST   /posts(.:format)                                                                                  posts#create
#       new_post GET    /posts/new(.:format)                                                                              posts#new
#      edit_post GET    /posts/:id/edit(.:format)                                                                         posts#edit
#           post GET    /posts/:id(.:format)                                                                              posts#show
#                PATCH  /posts/:id(.:format)                                                                              posts#update
#                PUT    /posts/:id(.:format)                                                                              posts#update
#                DELETE /posts/:id(.:format)                                                                              posts#destroy
#           root GET    /                                                                                                 post#index

Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  root "posts#index"
end
