Rails.application.routes.draw do
  #root "members#index"
    #  get "index"=> "member#index" , as: "index"
    #      get "show"=> "member#show" , as: "member"
    #      get "new"=> "member#new" , as: "new"
    #      get "edit"=> "member#edit" , as: "edit"
    #      get "create"=> "member#create" , as: "create"
    #      get "update"=> "member#update" , as: "update"
resources :members
end
