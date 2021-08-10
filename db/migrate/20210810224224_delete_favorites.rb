class DeleteFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column(:albums, :favorite)
  end
end
