Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  get 'about', to: 'blogs#about' #esta ruta se hizo aparte de resources (rutas crud de blogs) porque es adicional a crud, entonces se condidera
                                 #customized, por tanto se le especifica el get (para mostrar info) y se le indica el controlador y método
                                 #que resolveran esta solicitud (cuando el usuario haga click en about en la navbar)
                                 
  root 'blogs#index' #establecemos la página index como la página de inicio del sitio.
end
