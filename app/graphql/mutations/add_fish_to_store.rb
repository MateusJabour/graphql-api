module Mutations
  class AddFishToStore < GraphQL::Schema::Mutation
    argument :store_id, String, required: true
    argument :fish, Types::FishInputType, required: true

    field :fish, Types::FishType, null: false 

    def resolve(store_id:, fish:)
      store = Store.find_by_id(store_id)
      fish = store.fish.new(fish.to_h)
      fish.save!

      {fish: fish}
    end
  end
end