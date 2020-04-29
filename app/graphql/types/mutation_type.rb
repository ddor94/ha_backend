module Types
  class MutationType < Types::BaseObject
    field :registration, mutation: Mutations::Artists::Registration
    field :login, mutation: Mutations::Artists::Login
    field :logout, mutation: Mutations::Artists::Logout
    field :update, mutation: Mutations::Artists::Update
  end
end
