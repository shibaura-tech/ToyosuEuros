class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :n
      t.text :post_message
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
