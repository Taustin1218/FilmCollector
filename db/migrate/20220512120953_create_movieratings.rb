class CreateMovieratings < ActiveRecord::Migration[7.0]
  def change
    create_table :movieratings do |t|
      t.string :title

      t.timestamps
    end
  end
end
