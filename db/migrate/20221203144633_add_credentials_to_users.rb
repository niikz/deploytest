class AddCredentialsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :token, :string
    add_column :users, :secret, :string
  end
end
