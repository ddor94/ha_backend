module Types
  class ArtistType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: false
    field :about, String, null: true
    field :tattoo, Boolean, null: false
    field :piercing, Boolean, null: false
    field :authentication_token, String, null: false
    field :authentication_token_created_at, String, null: false
  end
end
