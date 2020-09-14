# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.delete_all
Post.delete_all
Category.delete_all

Tag.create(name: "javascript")
Tag.create(name: "react")
Tag.create(name: "ruby")
Tag.create(name: "rails")
cat_wd=Category.create(name:"web development", description:"All about Web development", published:true)
cat_db=Category.create(name:"database", description:"All about Database", published:true)

10.times do |i|
    Post.create(
        Title: "Post #{i}",
        Body: "Body #{i}",
        Published:true,
        category_id: i%2==0? cat_wd.id : cat_db.id
    )
end