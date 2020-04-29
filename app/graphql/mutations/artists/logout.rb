module Mutations
  class Artists::Logout < Mutations::BaseMutation
    field :artist, Types::ArtistType, null: false
    field :logged_out, Boolean, null: false

    def resolve
      artist = context[:current_artist]

      if artist
        success = artist.reset_authentication_token!
        { logged_out: true }
      else
        GraphQL::ExecutionError.new("User not signed in")
      end
    end
  end
end
