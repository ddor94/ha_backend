module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    protected

    def authorize_user
      return true if context[:current_artist].present?

      raise GraphQL::ExecutionError, "User not signed in"
    end
  end
end
