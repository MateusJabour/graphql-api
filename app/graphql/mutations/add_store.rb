module Mutations
  class AddStore < GraphQL::Schema::Mutation
    argument :name, String, required: true

    field :store, Types::StoreType, null: false 

    def resolve(name:)
      store = Store.create({ name: name })
      store.save!

      {store: store}
    end
  end
end