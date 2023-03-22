Rails.application.routes.draw do
    get '/', to: 'todos#get_todos'
    post '/create' to: 'todos#create'
  end