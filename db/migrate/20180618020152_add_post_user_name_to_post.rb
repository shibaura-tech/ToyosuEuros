class AddPostUserNameToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :post_user_name, :string
  end
end
