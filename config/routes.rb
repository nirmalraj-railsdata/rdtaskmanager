
Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
 resources :buckets do
  resources :tasks
end
end