class Type < ApplicationRecord
  has_and_belongs_to_many :effective_types, class_name: 'Type', join_table: :effective_types, foreign_key: :type_id, association_foreign_key: :effective_type_id
  has_and_belongs_to_many :not_very_effective_types, class_name: 'Type', join_table: :not_very_effective_types, foreign_key: :type_id, association_foreign_key: :not_very_effective_type_id
  has_and_belongs_to_many :ineffective_types, class_name: 'Type', join_table: :ineffective_types, foreign_key: :type_id, association_foreign_key: :ineffective_type_id
end
