module Types
  class QueryType < Types::BaseObject
    field :artists, [ArtistType], null: false do
      description "Returns all artists"
      argument :tattoo, Boolean, required: false
      argument :piercing, Boolean, required: false
      argument :offset, Integer, required: false
      argument :limit, Integer, required: false
    end

    field :styles, [StyleType], null: false do
      description "Returns all styles"
    end

    field :getCurrentArtist, ArtistType, null: false

    def artists(tattoo:false, piercing:false, offset:0, limit:16)
      if tattoo
        Artist.where(tattoo: tattoo).limit(offset + limit)
      elsif piercing
        Artist.where(piercing: piercing).limit(offset + limit)
      else
        Artist.first(8)
      end
    end

    def styles
      Style.all
    end

    def get_current_artist
      authorize_user

      context[:current_artist]
    end

    protected

    def authorize_user
      return true if context[:current_artist].present?

      raise GraphQL::ExecutionError, "User not signed in"
    end
  end
end
