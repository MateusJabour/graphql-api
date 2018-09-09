module Types 
  class QueryType < GraphQL::Schema::Object
    field :store, StoreType, null: true do
      description "Find a store by ID"
      argument :id, ID, required: true
    end

    def store(id:)
      Store.find_by(id: id)
    end
  end
end
