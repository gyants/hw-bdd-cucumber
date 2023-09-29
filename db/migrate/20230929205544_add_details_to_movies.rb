class AddDetailsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :overview, :text
    add_column :movies, :original_title, :string
    add_column :movies, :vote_average, :float
  end
end
