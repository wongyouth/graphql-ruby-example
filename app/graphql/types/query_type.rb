module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :post, PostType, null: false do
      argument :id, ID, required: true
    end

    def post(id: )
      Post.find id
    end


    field :posts, [PostType], null: false do
      argument :ids, [ID], required: false
    end

    def posts(ids: [])
      posts = Post.all
      posts = posts.where(id: ids) if ids.present?
      posts
    end
  end
end
