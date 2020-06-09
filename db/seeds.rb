# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'test', email: 'test@test.com', password: 'abcd1234')

genre = Genre.create(name: 'ファンタジー')
genre = Genre.create(name: '恋愛')
genre = Genre.create(name: '文芸')
genre = Genre.create(name: 'SF')
genre = Genre.create(name: 'その他')

novel = Novel.create(title: 'TEST_1')
novel = Novel.create(title: 'TEST_2')

story = Story.create(subtitle: 'test1', novel_id: 1, content: 'てすと')
story = Story.create(subtitle: 'test2', novel_id: 1, content: 'てすとだよ')
story = Story.create(subtitle: 'test3', novel_id: 2, content: 'てすとやで～～～')
story = Story.create(subtitle: 'test4', novel_id: 2, content: 'てすとです～')
