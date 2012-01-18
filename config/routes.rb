Enki::Application.routes.draw do
  get "dark/dark"

  root :to => 'dark#dark'
  match '*path' => redirect('/')
end
