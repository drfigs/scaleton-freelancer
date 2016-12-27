Rails.application.routes.draw do
  get 'welcome/index'

  match '/contacts',  to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

end
