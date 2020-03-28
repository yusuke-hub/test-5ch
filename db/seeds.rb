# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
      name: '経済',
      status: '0'
    },
    {
      name: 'エンタメ',
      status: '1'
    },
    {
      name: '政治',
      status: '2'
    }
  ]
)
Board.create!(
  [
    {
      user_id: '1',
      title: 'hogehoge',
      caption: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus quos quidem tenetur aut perspiciatis accusamus, laboriosam odio velit! Reprehenderit consequatur quod laborum, at repellat voluptatibus ab quae impedit asperiores nihil?',
      image: 'point-finger.jpg'
    },
    {
      user_id: '2',
      category_id: '2',
      title: 'hugahuga',
      caption: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus quos quidem tenetur aut perspiciatis accusamus, laboriosam odio velit! Reprehenderit consequatur quod laborum, at repellat voluptatibus ab quae impedit asperiores nihil?'
    },
    {
      user_id: '3',
      title: 'hoeghuga',
      caption: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Doloribus quos quidem tenetur aut perspiciatis accusamus, laboriosam odio velit! Reprehenderit consequatur quod laborum, at repellat voluptatibus ab quae impedit asperiores nihil?'
    }
  ]
)