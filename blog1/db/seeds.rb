# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Deleting tables..."

connection = ActiveRecord::Base.connection()
connection.execute("delete from action_text_rich_texts");
connection.execute("delete from active_storage_attachments");
connection.execute("delete from active_storage_blobs");
# connection.execute("delete from friendly_id_slugs");
connection.close()

Tagging.delete_all
Comment.delete_all
User.delete_all
Tag.delete_all
Post.delete_all
Category.delete_all


tag_js=Tag.create(name: "javascript")
tag_react=Tag.create(name: "react")
tag_ruby=Tag.create(name: "ruby")
tag_rails=Tag.create(name: "rails")
cat_wd=Category.create(name:"web development", description:"All about Web development", published:true)
cat_db=Category.create(name:"database", description:"All about Database", published:true)

abcd = User.create(
    email: "abcd@abcd.com",
    password: "1234567",
    password_confirmation: "1234567"
)
admin = User.create(
    email: "admin@admin.com",
    password: "1234567",
    password_confirmation: "1234567"
)

10.times do |i|
    Post.create(
        user: i%3==0? abcd : admin,
        Title: "Post #{i}",
        Body: "Body #{i}",
        Published:true,
        tags: i%2==0? [tag_js,tag_ruby] : [tag_react,tag_rails],
        category_id: i%2==0? cat_wd.id : cat_db.id
    )
end

Post.all.each do |post|
    3.times do |i|
    post.comments.build(
        title: Faker::ChuckNorris.fact,
        content: Faker::ChuckNorris.fact,
        user: i%2 ==0? admin : abcd
    )
    post.save
    end
end