Rails.application.routes.draw do
  root 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Un utilisateur peut voir la liste des cocktails
  # Un utilisateur peut voir les détails d'un cocktail donné, avec la dose nécessaire pour chaque ingrédient
  # Un utilisateur peut créer un nouveau cocktail
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  delete "doses/:id", to: "doses#destroy", as: "dose"
end
