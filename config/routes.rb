Rails.application.routes.draw do
  scope '(:locale)' do
    get 'admin' => 'admin#index'

    get 'store/index'
    get 'questions' => 'static_pages#questions'
    get 'news' => 'static_pages#news'
    get 'contact' => 'static_pages#contact'
    get 'about' => 'static_pages#about'
    get 'terms' => 'static_pages#terms'
    get 'privacy' => 'static_pages#privacy'

    controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

    resources :users
    resources :orders
    resources :line_items
    resources :carts

    resources :products do
      get :who_bought, on: :member
    end

    root to: 'store#index', as: 'store', via: :all
  end
end
