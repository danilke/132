Avistimulum::Application.routes.draw do
  get "users/show"

  resources :answers

  resources :comments

  resources :questions

  devise_for :users

  match "/questions/add_new_comment" => "questions#add_new_comment", :as => "add_new_comment_to_question", :via => [:post]
 
  match "/questions/add_new_answer" => "questions#add_new_answer", :as => "add_new_answer_to_question", :via => [:post]


  match "/answers/add_new_comment" => "answers#add_new_comment", :as => "add_new_comment_to_answers", :via => [:post]

  match "/user" => "users#show"
end
