Rails.application.routes.draw do
  get 'products/new'
  get 'home/index'
  root 'home#index'

  # a rota de detalhes do produto deve ficar fora do grupo admin
  # pois os usuarios normais tem que ver o produto, nao so
  # os administradores
  get 'products/info/:id' => 'products#info'

  scope :admin do
    get 'products/new'
    post 'products/create'
    # essa details eh soh para administradores
    get 'products/details/:id' => 'products#details'
    get 'products/all'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
