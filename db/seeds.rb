# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  [
    {
      email: 'admin@admin.com',
      password: 'adminadmin'
    }
  ]
)
User.create!(
  [
    {
      email: 'test1@test.com',
      password: '111111'
    },
    {
      email: 'test2@test.com',
      password: '222222'      
    },
    {
      email: 'test3@test.com',
      password: '333333'
    }
  ]
)
Category.create!(
  [
    {
      name: 'ニュース速報',
      status: 1
    },
        {
      name: '芸スポ速報',
      status: 1
    },
        {
      name: 'なんでも実況J',
      status: 1
    }
  ]
)
Board.create!(
  [
    {
      user_id: '1',
      title: 'hogehogehogehoge',
      caption: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus quos quidem tenetur aut perspiciatis accusamus, laboriosam odio velit! Reprehenderit consequatur quod laborum, at repellat voluptatibus ab quae impedit asperiores nihil?',
      image_id: nil,
      category_id: '1'
    },
    {
      user_id: '2',
      category_id: '2',
      title: 'hugahugahogehoge',
      caption: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus quos quidem tenetur aut perspiciatis accusamus, laboriosam odio velit! Reprehenderit consequatur quod laborum, at repellat voluptatibus ab quae impedit asperiores nihil?',
      image_id: nil,
    },
    {
      user_id: '3',
      title: 'hoeghugahogehoge',
      caption: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus quos quidem tenetur aut perspiciatis accusamus, laboriosam odio velit! Reprehenderit consequatur quod laborum, at repellat voluptatibus ab quae impedit asperiores nihil?',
      image_id: nil,
      category_id: '3'
    }
  ]
)