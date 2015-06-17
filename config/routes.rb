Rails.application.routes.draw do
  unless Rails.env.production?
    match '/eslint' => 'eslint#show', via: :get
    match '/eslint/source' => 'eslint#source', via: :get, as: :eslint_source
  end
end
