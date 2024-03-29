module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :post_id, Integer, null: false
    field :content, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :post, [Types::PostType], null: false
  end
end
