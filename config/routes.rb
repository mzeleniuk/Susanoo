Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users

  get 'store/index'
  get 'questions' => 'static_pages#questions'
  get 'news' => 'static_pages#news'
  get 'contact' => 'static_pages#contact'
  get 'about' => 'static_pages#about'
  get 'terms' => 'static_pages#terms'
  get 'privacy' => 'static_pages#privacy'

  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root to: 'store#index', as: 'store', via: :all
  end
end
