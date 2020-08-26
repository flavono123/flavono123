class CreateSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :sentences do |t|
      t.string :text, null: false
      t.belongs_to :title, foreign_key: true, null: false
      t.timestamps
    end
  end
end
