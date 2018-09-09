module Types
  class MutationType < GraphQL::Schema::Object
    field :add_store, mutation: Mutations::AddStore
  end
end
