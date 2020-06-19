# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'test', email: 'test@test.com', password: 'abcd1234')

novel = Novel.create(title: 'TEST_1', genre: 2, series: 7)
novel = Novel.create(title: 'TEST_2', genre: 3, series: 7)

story = Story.create(penname: 'ペンネーム', subtitle: 'TEST_1の一話', novel_id: 1, content: 'てすと')
story = Story.create(penname: 'ペンネーム', subtitle: 'TEST_1の二話', parent_id: 1, novel_id: 1, content: 'てすとだよ')
story = Story.create(penname: 'ペンネーム2', subtitle: 'TEST_1の改二話', parent_id: 1, novel_id: 1, content: 'てすとー')
story = Story.create(penname: 'ペンネーム2', subtitle: 'TEST_1の改三話', parent_id: 3, novel_id: 1, content: 'てすとや')
story = Story.create(penname: 'ペンネーム3', subtitle: 'TEST_2の一話', novel_id: 2, content: 'てすとやで～～～')
story = Story.create(penname: 'ペンネーム3', subtitle: 'TEST_2の二話', parent_id: 5, novel_id: 2, content: 'てすとです～')