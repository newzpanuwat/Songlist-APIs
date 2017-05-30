Rails.application.routes.draw do
    namespace :api, defaults: { format: :json } do
      namespace :v1 do
          resources :songs, :only => [:index, :show, :create, :update, :delete]
      end
    end

end
