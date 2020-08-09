class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name, null: false
    end

    create_table :effective_types, id: false do |t|
      t.integer :type_id, null: false
      t.integer :effective_type_id, null: false
      t.index %i[type_id effective_type_id], unique: true, name: :index_uniqueness_on_effective_types
    end

    create_table :not_very_effective_types, id: false do |t|
      t.integer :type_id, null: false
      t.integer :not_very_effective_type_id, null: false
      t.index %i[type_id not_very_effective_type_id], unique: true, name: :index_uniqueness_on_not_very_effective_types
    end

    create_table :ineffective_types, id: false do |t|
      t.integer :type_id, null: false
      t.integer :ineffective_type_id, null: false
      t.index %i[type_id ineffective_type_id], unique: true, name: :index_uniqueness_on_ineffective_types
    end
  end
end
