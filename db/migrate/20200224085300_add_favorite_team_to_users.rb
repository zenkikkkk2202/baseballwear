class AddFavoriteTeamToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :favorite_team, :string
  end
end
