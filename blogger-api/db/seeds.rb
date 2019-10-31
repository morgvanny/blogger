# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# {
#       "id": 1,
#       "title": "Bob's great adventure",
#       "author": "Sam",
#       "content": "Sam and bob get stuck at walmart."
#     },
#     {
#       "id": 2,
#       "title": "Another post",
#       "author": "Fred",
#       "content": "Post content"
#     },
#     {
#       "id": 3,
#       "title": "Another post 2",
#       "author": "sarah",
#       "content": "Post content 2"
#     },
#     {
#       "title": "something",
#       "author": "someone",
#       "content": "some content\n",
#       "id": 4
#     },
#     {
#       "title": "something",
#       "author": "me",
#       "content": "hi",
#       "id": 5
#     },
#     {
#       "title": "another",
#       "author": "me",
#       "content": "stuff\n",
#       "id": 6
#     }
sam = User.create(name:"Sam")

sam.posts.create(title:"Bob's great adventure", content: "Sam and bob get stuck at walmart.")

fred = User.create(name:"Fred")
fred.posts.create(title: "Another Post", content: "Post content")

sarah = User.create(name: "Sarah")

sarah.posts.create(title: "Another Post 2", content: "Post content 2")