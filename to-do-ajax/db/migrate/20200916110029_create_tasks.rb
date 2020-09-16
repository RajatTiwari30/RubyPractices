class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.integer :position

      t.timestamps
    end
  end
end
