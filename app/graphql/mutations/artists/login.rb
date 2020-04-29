module Mutations
  class Artists::Login < Mutations::BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    type Types::ArtistType

    def resolve(args)
      artist = Artist.find_for_database_authentication(email: args[:email])

      if artist.present?
        if artist.valid_password?(args[:password])
          context[:current_artist] = artist
        else
          GraphQL::ExecutionError.new("Incorrect Email/Password")
        end
      else
        GraphQL::ExecutionError.new("User not registered on this application")
      end
    end
  end
end
