module Types
  class FishType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :price, Int, null: false
    field :description, String, null: true
    field :store, StoreType, null: false
  end
end
