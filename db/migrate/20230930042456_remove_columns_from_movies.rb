class RemoveColumnsFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :original_title, :string
    remove_column :movies, :description, :text
    remove_column :movies, :vote_average, :decimal
  end
end
