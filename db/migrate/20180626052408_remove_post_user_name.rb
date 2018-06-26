class RemovePostUserName < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :post_user_name, :string
  end
end
