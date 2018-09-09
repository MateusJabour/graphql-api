module Types 
  class FishInputType < GraphQL::Schema::InputObject
    argument :name, String, required: true
    argument :price, Int, required: true
    argument :description, String, required: false
    argument :status, Boolean, required: false
    argument :image, String, required: false
  end
end