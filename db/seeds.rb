# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

yugi = Account.create(name: "Yugi", password: "aaa")
kaiba = Account.create(name: "Kaiba", password: "bbb")
marik = Account.create(name: "Marik", password: "ccc")

dueling = Post.create(title: "Dueling", content: "Dueling is awesome!", account_id: yugi.id, edited: false, deleted: false)
bestMonster = Post.create(title: "Best Monster", content: "Blue-Eyes is the best monster!!", account_id: kaiba.id, edited: false, deleted: false)

comment1 = Comment.create(content: "You all suck", account_id: marik.id, post_id: dueling.id, edited: false, deleted: false)

comment2 = Comment.create(content: "Dark Magician is the best!", account_id: yugi.id, post_id: bestMonster.id, edited: false, deleted: false)

comment3 = Comment.create(content: "You suck more!", account_id: kaiba.id, post_id: dueling.id, parent_id: comment1.id, edited: false, deleted: false)
comment4 = Comment.create(content: "You suck more 2!", account_id: marik.id, post_id: dueling.id, parent_id: comment1.id, edited: false, deleted: false)
comment5 = Comment.create(content: "YOU WANNA DUEL?!", account_id: kaiba.id, post_id: dueling.id, parent_id: comment4.id, edited: false, deleted: false)
comment6 = Comment.create(content: "Hi guys!", account_id: yugi.id, post_id: dueling.id, edited: false, deleted: false)

postVote1 = PostVote.create(account_id: yugi.id, post_id: dueling.id, like: true)
postVote2 = PostVote.create(account_id: kaiba.id, post_id: best.id, like: false)

commentVote1 = CommentVote.create(account_id: kaiba.id, comment_id: comment1.id, like: true)
commentVote2 = CommentVote.create(account_id: marik.id, comment_id: comment2.id, like: false)
