class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false 
      t.date :reserved_date
      t.timestamps
    end
  end
end
