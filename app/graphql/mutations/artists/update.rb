module Mutations
  class Artists::Update < BaseMutation
    argument :id, ID, required: true
    argument :email, String, required: false
    argument :name, String, required: false
    argument :about, String, required: false
    argument :tattoo, Boolean, required: false
    argument :piercing, Boolean, required: false

    field :artist, Types::ArtistType, null: true

    def resolve(args)
      authorize_user

      artist = Artist.find(args[:id])

      if artist.update(args)
        { artist: context[:current_artist] }
      else
        raise GraphQL::ExecutionError, artist.errors.full_messages
      end
    end

    protected

    def authorize_user
      return true if context[:current_artist].present?

      raise GraphQL::ExecutionError, "User not signed in"
    end
  end
end
