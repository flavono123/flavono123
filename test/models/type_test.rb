require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  test 'effective_type' do
    {:bug=>[:dark, :grass, :psychic], :dark=>[:ghost, :psychic], :dragon=>[:dragon], :electric=>[:flying, :water], :fairy=>[:dark, :dragon, :fighting], :fighting=>[:dark, :ice, :normal, :rock, :steel], :fire=>[:bug, :grass, :ice, :steel], :flying=>[:bug, :fighting, :grass], :ghost=>[:ghost, :psychic], :grass=>[:ground, :rock, :water], :ground=>[:electric, :fire, :poison, :rock, :steel], :ice=>[:dragon, :flying, :grass, :ground], :normal=>[], :poison=>[:grass, :fairy], :psychic=>[:fighting, :poison], :rock=>[:bug, :fire, :flying, :ice], :steel=>[:fairy, :ice, :rock], :water=>[:fire, :ground, :rock]}.each do |name, effective_type_names|
      assert_equal Type.find_by(name: name).effective_types.pluck(:name).sort, effective_type_names.map(&:to_s).sort
    end
  end

  test 'not_very_effective_type' do
    {:bug=>[:fighting, :grass, :ground], :dark=>[:dark, :ghost], :dragon=>[:electric, :fire, :grass, :water], :electric=>[:electric, :flying, :steel], :fairy=>[:bug, :dark, :fighting], :fighting=>[:bug, :dark, :rock], :fire=>[:bug, :fire, :fairy, :grass, :ice, :steel], :flying=>[:bug, :fighting, :grass], :ghost=>[:bug, :poison], :grass=>[:electric, :grass, :ground, :water], :ground=>[:poison, :rock], :ice=>[:ice], :normal=>[], :poison=>[:bug, :fighting, :fairy, :grass, :poison], :psychic=>[:fighting, :psychic], :rock=>[:fire, :flying, :normal, :poison], :steel=>[:bug, :dragon, :flying, :fairy, :grass, :ice, :normal, :psychic, :rock, :steel], :water=>[:fire, :ice, :steel, :water]}.each do |name, not_very_effective_type_names|
      assert_equal Type.find_by(name: name).not_very_effective_types.pluck(:name).sort, not_very_effective_type_names.map(&:to_s).sort
    end
  end

  test 'ineffective_type' do
    {:bug=>[], :dark=>[:psychic], :dragon=>[], :electric=>[], :fairy=>[:dragon], :fighting=>[], :fire=>[], :flying=>[:ground], :ghost=>[:fighting, :normal], :grass=>[], :ground=>[:electric], :ice=>[], :normal=>[:ghost], :poison=>[], :psychic=>[], :rock=>[], :steel=>[:poison], :water=>[]}.each do |name, ineffective_type_names|
      assert_equal Type.find_by(name: name).ineffective_types.pluck(:name).sort, ineffective_type_names.map(&:to_s).sort
    end
  end
end
