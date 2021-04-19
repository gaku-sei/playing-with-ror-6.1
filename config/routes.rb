Rails.application.routes.draw do
  root to: redirect('/graphiql') if Rails.env.development?

  mount GraphqlPlayground::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?

  post '/graphql', to: 'graphql#execute'
end
