module Mutations
  class AddStore < GraphQL::Schema::Mutation
    argument :store, Types::StoreInputType, required: true

    field :store, Types::StoreType, null: false 

    def resolve(store:)
      store = Store.create(store.to_h)
      store.save!

      {store: store}
    end
  end
end