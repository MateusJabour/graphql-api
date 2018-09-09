module Types
  class MutationType < GraphQL::Schema::Object
    field :add_store, mutation: Mutations::AddStore
    field :add_fish_to_store, mutation: Mutations::AddFishToStore
  end
end
