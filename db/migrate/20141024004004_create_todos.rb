class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :body
      t.boolean :complete, default: false
      t.timestamps
    end
  end
end
