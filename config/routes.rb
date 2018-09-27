Rails.application.routes.draw do
  mount Zoome::Manager::Engine => '/managers', as: :managers
end
