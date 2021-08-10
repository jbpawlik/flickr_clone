class AddFavorite < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :favorite, :boolean, default: false
  end
end
