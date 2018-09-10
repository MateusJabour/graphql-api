module Types
  class StoreType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :address, String, null: false
    field :number, String, null: false
  end
end
