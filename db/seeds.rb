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

dueling = Post.create(title: "Dueling", content: "Dueling is awesome!", account_id: yugi.id)
bestMonster = Post.create(title: "Best Monster", content: "Blue-Eyes is the best monster!!", account_id: kaiba.id)

comment1 = Comment.create(content: "You all suck", account_id: marik.id, post_id: dueling.id)
comment2 = Comment.create(content: "Dark Magician is the best!", account_id: yugi.id, post_id: bestMonster.id)
