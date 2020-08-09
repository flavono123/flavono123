class NotVeryEffectiveType < ApplicationRecord; end

IneffectiveType.pluck.each_with_index do |c, i|
  s, d = c
  puts <<~YAML
  #{i}:
    type_id: #{s}
    ineffective_type_id: #{d}
  YAML
end
