GraphiQL::Rails.config.headers['Authorization'] = -> (context) { "bearer #{context.cookies['_graphql_token']}" }
