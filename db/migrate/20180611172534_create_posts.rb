class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :post_message
      t.string :post_user_name
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
