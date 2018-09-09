module Types
  class StoreInputType < GraphQL::Schema::InputObject
    argument :name, String, required: true
    argument :address, String, required: true
    argument :number, String, required: true
  end
end
