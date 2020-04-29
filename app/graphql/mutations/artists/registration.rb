module Mutations
  class Artists::Registration < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true
    argument :tattoo, Boolean, required: true
    argument :piercing, Boolean, required: true

    type Types::ArtistType

    def resolve(args)
      artist = Artist.create!(args)

      context[:current_artist] = artist
    end
  end
end
