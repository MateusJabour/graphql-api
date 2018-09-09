module Types
  class StoreType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
  end
end
