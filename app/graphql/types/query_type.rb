module Types 
  class QueryType < GraphQL::Schema::Object
    field :store, StoreType, null: true do
      description "Find a store by ID"
      argument :id, ID, required: true
    end

    def store(id:)
      Store.find_by(id: id)
    end

    field :fishes_from_store, [FishType], null: false do 
      description 'Find fish from a specific store'
      argument :name, String, required: true
    end

    def fishes_from_store(name:)
      Store.find_by(name: name).fish
    end

    field :fish, FishType, null: false do
      description 'Find fish by ID'
      argument :id, ID, required: true
    end

    def fish(id:)
      Fish.find_by(id: id)
    end
  end
end
