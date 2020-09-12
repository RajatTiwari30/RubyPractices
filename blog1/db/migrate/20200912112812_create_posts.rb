class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :Title
      t.text :Body
      t.boolean :Published

      t.timestamps
    end
  end
end
