# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create([
  { title: 'Post 1', truncated_preview: 'great...', content: 'GraphQL is great'},
  { title: 'Post 2', truncated_preview: 'wonderful...', content: 'GraphQL is wonderful'},
])

Comment.create([
  { post_id: 1, content: 'Post 1 Comment'},
  { post_id: 2, content: 'Post 2 Comment'},
])
